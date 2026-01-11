## Bestandsstructuur
Het model is opgebouwd volgens de OpenAPI/Swagger methodiek met discriminator.
- mainCondition.yaml
  - Hoofdbestand van het schema.
  - Bevat de discriminator op basis van het veld conditionType.
  - Verwijst door naar de specifieke definities.
- conditions/ageCondition.yaml or other conditions 
  - De uitwerking voor leeftijdsafhankelijke regels.
  - Bevat validatie-logica: bijv. als operator between is, zijn min en max verplicht.
  - Bevat de context-velden basedOn (peildatum) en unit (jaren).
- conditions/compoundCondition.yaml
  - Het logische "lijm"-blok.
  - Hiermee kun je condities combineren (AND, OR) of uitsluiten (NOT).
  - Dit blok is recursief: het kan weer andere Compound blokken bevatten

## Structuur
Het veld `conditionType` bepaalt welke andere velden toegestaan zijn. Voor meer complexe regels en voor het combineren van condities kan er gebruikt worden gemaakt van het compound blok. Een Compound blok bevat een lijst conditions.

```json
{
  "conditionType": "Compound",
  "operator": "and",
  "description": "Jeugdloon regeling voor operationeel personeel",
  "conditions": [
    {
      // DEEL 1: Leeftijd tussen 18 en 21
      "conditionType": "Age",
      "operator": "between",
      "basedOn": "ContractStartDate",
      "unit": "Year",
      "min": 18,
      "max": 21,
    },
    {
      // DEEL 2: Functie Logistiek OF Transport
      "conditionType": "Compound",
      "operator": "or",
      "description": "Geldig voor afdeling Logistiek of Transport",
      "conditions": [
        {
          "conditionType": "FunctionDependent",
          "operator": "eq",
          "value": "Logistiek"
        },
        {
          "conditionType": "FunctionDependent",
          "operator": "eq",
          "value": "Transport"
        }
      ]
    }
  ]
}
```

or 

```json
{
  "conditionType": "Age",
  "operator": "between",
  "basedOn": "CurrentDate",
  "unit": "Year",
  "min": 21,
  "max": 30,
}
```

## Validatie regels

De schema's bevatten logica (allOf / if-then) om invoer te valideren en ambiguïteit te voorkomen:
- Bij operators between / not_between:
  - Zijn de velden min en max verplicht.
  - Is het veld value verboden.
- Bij operators eq, gt, lt, etc.:
  - Is het veld value verplicht.
  - Zijn de velden min en max verboden.
