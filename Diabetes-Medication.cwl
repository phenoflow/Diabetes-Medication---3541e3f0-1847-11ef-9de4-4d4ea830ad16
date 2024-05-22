cwlVersion: v1.0
steps:
  read-potential-cases-i2b2:
    run: read-potential-cases-i2b2.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule1
  diabetes-medication-sachet---primary:
    run: diabetes-medication-sachet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule2
      potentialCases:
        id: potentialCases
        source: read-potential-cases-i2b2/output
  diabetes-medication-100mg---primary:
    run: diabetes-medication-100mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule3
      potentialCases:
        id: potentialCases
        source: diabetes-medication-sachet---primary/output
  diabetes-medication-lantus---primary:
    run: diabetes-medication-lantus---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule4
      potentialCases:
        id: potentialCases
        source: diabetes-medication-100mg---primary/output
  diabetes-medication-novomix---primary:
    run: diabetes-medication-novomix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule5
      potentialCases:
        id: potentialCases
        source: diabetes-medication-lantus---primary/output
  diabetes-medication-optipen---primary:
    run: diabetes-medication-optipen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule6
      potentialCases:
        id: potentialCases
        source: diabetes-medication-novomix---primary/output
  diabetes-medication-takeda---primary:
    run: diabetes-medication-takeda---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule7
      potentialCases:
        id: potentialCases
        source: diabetes-medication-optipen---primary/output
  diabetes-medication-innovo---primary:
    run: diabetes-medication-innovo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule8
      potentialCases:
        id: potentialCases
        source: diabetes-medication-takeda---primary/output
  diabetes-medication-10microgram---primary:
    run: diabetes-medication-10microgram---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule9
      potentialCases:
        id: potentialCases
        source: diabetes-medication-innovo---primary/output
  diabetes-medication-pioglitazone---primary:
    run: diabetes-medication-pioglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule10
      potentialCases:
        id: potentialCases
        source: diabetes-medication-10microgram---primary/output
  diabetes-medication-isophane---primary:
    run: diabetes-medication-isophane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule11
      potentialCases:
        id: potentialCases
        source: diabetes-medication-pioglitazone---primary/output
  diabetes-medication-injex---primary:
    run: diabetes-medication-injex---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule12
      potentialCases:
        id: potentialCases
        source: diabetes-medication-isophane---primary/output
  diabetes-medication-hillcross---primary:
    run: diabetes-medication-hillcross---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule13
      potentialCases:
        id: potentialCases
        source: diabetes-medication-injex---primary/output
  diabetes-medication-amaryl---primary:
    run: diabetes-medication-amaryl---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule14
      potentialCases:
        id: potentialCases
        source: diabetes-medication-hillcross---primary/output
  rapid-diabetes-medication---primary:
    run: rapid-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule15
      potentialCases:
        id: potentialCases
        source: diabetes-medication-amaryl---primary/output
  diabetes-medication-needle---primary:
    run: diabetes-medication-needle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule16
      potentialCases:
        id: potentialCases
        source: rapid-diabetes-medication---primary/output
  diabetes-medication-500mg---primary:
    run: diabetes-medication-500mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule17
      potentialCases:
        id: potentialCases
        source: diabetes-medication-needle---primary/output
  consumable-diabetes-medication---primary:
    run: consumable-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule18
      potentialCases:
        id: potentialCases
        source: diabetes-medication-500mg---primary/output
  diabetes-medication-libanil---primary:
    run: diabetes-medication-libanil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule19
      potentialCases:
        id: potentialCases
        source: consumable-diabetes-medication---primary/output
  diabetes-medication-basal---primary:
    run: diabetes-medication-basal---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule20
      potentialCases:
        id: potentialCases
        source: diabetes-medication-libanil---primary/output
  single-diabetes-medication---primary:
    run: single-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule21
      potentialCases:
        id: potentialCases
        source: diabetes-medication-basal---primary/output
  diabetes-medication-180mg---primary:
    run: diabetes-medication-180mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule22
      potentialCases:
        id: potentialCases
        source: single-diabetes-medication---primary/output
  diabetes-medication-protaphane---primary:
    run: diabetes-medication-protaphane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule23
      potentialCases:
        id: potentialCases
        source: diabetes-medication-180mg---primary/output
  diabetes-medication-duloxetine---primary:
    run: diabetes-medication-duloxetine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule24
      potentialCases:
        id: potentialCases
        source: diabetes-medication-protaphane---primary/output
  diabetes-medication-edition---primary:
    run: diabetes-medication-edition---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule25
      potentialCases:
        id: potentialCases
        source: diabetes-medication-duloxetine---primary/output
  diabetes-medication-tolbutamide---primary:
    run: diabetes-medication-tolbutamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule26
      potentialCases:
        id: potentialCases
        source: diabetes-medication-edition---primary/output
  mixed-diabetes-medication---primary:
    run: mixed-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule27
      potentialCases:
        id: potentialCases
        source: diabetes-medication-tolbutamide---primary/output
  diabetes-medication-orabet---primary:
    run: diabetes-medication-orabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule28
      potentialCases:
        id: potentialCases
        source: mixed-diabetes-medication---primary/output
  diabetes-medication-metformin---primary:
    run: diabetes-medication-metformin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule29
      potentialCases:
        id: potentialCases
        source: diabetes-medication-orabet---primary/output
  diabetes-medication-onglyza---primary:
    run: diabetes-medication-onglyza---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule30
      potentialCases:
        id: potentialCases
        source: diabetes-medication-metformin---primary/output
  diabetes-medication-unifine---primary:
    run: diabetes-medication-unifine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule31
      potentialCases:
        id: potentialCases
        source: diabetes-medication-onglyza---primary/output
  diabetes-medication-750mg---primary:
    run: diabetes-medication-750mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule32
      potentialCases:
        id: potentialCases
        source: diabetes-medication-unifine---primary/output
  diabetes-medication-hypoguard---primary:
    run: diabetes-medication-hypoguard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule33
      potentialCases:
        id: potentialCases
        source: diabetes-medication-750mg---primary/output
  diabetes-medication-chlorpropamide---primary:
    run: diabetes-medication-chlorpropamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule34
      potentialCases:
        id: potentialCases
        source: diabetes-medication-hypoguard---primary/output
  diabetes-medication-bayer---primary:
    run: diabetes-medication-bayer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule35
      potentialCases:
        id: potentialCases
        source: diabetes-medication-chlorpropamide---primary/output
  servier-diabetes-medication---primary:
    run: servier-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule36
      potentialCases:
        id: potentialCases
        source: diabetes-medication-bayer---primary/output
  diabetes-medication-lente---primary:
    run: diabetes-medication-lente---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule37
      potentialCases:
        id: potentialCases
        source: servier-diabetes-medication---primary/output
  diabetes-medication-metabet---primary:
    run: diabetes-medication-metabet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule38
      potentialCases:
        id: potentialCases
        source: diabetes-medication-lente---primary/output
  diabetes-medication-glargine---primary:
    run: diabetes-medication-glargine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule39
      potentialCases:
        id: potentialCases
        source: diabetes-medication-metabet---primary/output
  special-diabetes-medication---primary:
    run: special-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule40
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glargine---primary/output
  diabetes-medication-optiset---primary:
    run: diabetes-medication-optiset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule41
      potentialCases:
        id: potentialCases
        source: special-diabetes-medication---primary/output
  diabetes-medication-inhalation---primary:
    run: diabetes-medication-inhalation---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule42
      potentialCases:
        id: potentialCases
        source: diabetes-medication-optiset---primary/output
  diabetes-medication-kwikpen---primary:
    run: diabetes-medication-kwikpen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule43
      potentialCases:
        id: potentialCases
        source: diabetes-medication-inhalation---primary/output
  diabetes-medication-mhi500---primary:
    run: diabetes-medication-mhi500---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule44
      potentialCases:
        id: potentialCases
        source: diabetes-medication-kwikpen---primary/output
  diabetes-medication-protamine---primary:
    run: diabetes-medication-protamine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule45
      potentialCases:
        id: potentialCases
        source: diabetes-medication-mhi500---primary/output
  diabetes-medication-luxura---primary:
    run: diabetes-medication-luxura---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule46
      potentialCases:
        id: potentialCases
        source: diabetes-medication-protamine---primary/output
  diabetes-medication-solostar---primary:
    run: diabetes-medication-solostar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule47
      potentialCases:
        id: potentialCases
        source: diabetes-medication-luxura---primary/output
  diabetes-medication-cymbalta---primary:
    run: diabetes-medication-cymbalta---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule48
      potentialCases:
        id: potentialCases
        source: diabetes-medication-solostar---primary/output
  diabetes-medication-device---primary:
    run: diabetes-medication-device---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule49
      potentialCases:
        id: potentialCases
        source: diabetes-medication-cymbalta---primary/output
  diabetes-medication-glibenclamide---primary:
    run: diabetes-medication-glibenclamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule50
      potentialCases:
        id: potentialCases
        source: diabetes-medication-device---primary/output
  diabetes-medication-repaglinide---primary:
    run: diabetes-medication-repaglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule51
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glibenclamide---primary/output
  diabetes-medication-exelint---primary:
    run: diabetes-medication-exelint---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule52
      potentialCases:
        id: potentialCases
        source: diabetes-medication-repaglinide---primary/output
  diabetes-medication-microfine---primary:
    run: diabetes-medication-microfine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule53
      potentialCases:
        id: potentialCases
        source: diabetes-medication-exelint---primary/output
  diabetes-medication-silver---primary:
    run: diabetes-medication-silver---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule54
      potentialCases:
        id: potentialCases
        source: diabetes-medication-microfine---primary/output
  ultra-diabetes-medication---primary:
    run: ultra-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule55
      potentialCases:
        id: potentialCases
        source: diabetes-medication-silver---primary/output
  diabetes-medication-powder---primary:
    run: diabetes-medication-powder---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule56
      potentialCases:
        id: potentialCases
        source: ultra-diabetes-medication---primary/output
  diabetes-medication-becton---primary:
    run: diabetes-medication-becton---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule57
      potentialCases:
        id: potentialCases
        source: diabetes-medication-powder---primary/output
  diabetes-medication-preset---primary:
    run: diabetes-medication-preset---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule58
      potentialCases:
        id: potentialCases
        source: diabetes-medication-becton---primary/output
  diabetes-medication-starter---primary:
    run: diabetes-medication-starter---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule59
      potentialCases:
        id: potentialCases
        source: diabetes-medication-preset---primary/output
  diabetes-medication-prolonged---primary:
    run: diabetes-medication-prolonged---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule60
      potentialCases:
        id: potentialCases
        source: diabetes-medication-starter---primary/output
  diabetes-medication-saxagliptin---primary:
    run: diabetes-medication-saxagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule61
      potentialCases:
        id: potentialCases
        source: diabetes-medication-prolonged---primary/output
  diabetes-medication-acting---primary:
    run: diabetes-medication-acting---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule62
      potentialCases:
        id: potentialCases
        source: diabetes-medication-saxagliptin---primary/output
  diabetes-medication-tablet---primary:
    run: diabetes-medication-tablet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule63
      potentialCases:
        id: potentialCases
        source: diabetes-medication-acting---primary/output
  diabetes-medication-velosulin---primary:
    run: diabetes-medication-velosulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule64
      potentialCases:
        id: potentialCases
        source: diabetes-medication-tablet---primary/output
  diabetes-medication-sqpen---primary:
    run: diabetes-medication-sqpen---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule65
      potentialCases:
        id: potentialCases
        source: diabetes-medication-velosulin---primary/output
  diabetes-medication-glimepiride---primary:
    run: diabetes-medication-glimepiride---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule66
      potentialCases:
        id: potentialCases
        source: diabetes-medication-sqpen---primary/output
  diabetes-medication-morningsid---primary:
    run: diabetes-medication-morningsid---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule67
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glimepiride---primary/output
  diabetes-medication-sandoz---primary:
    run: diabetes-medication-sandoz---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule68
      potentialCases:
        id: potentialCases
        source: diabetes-medication-morningsid---primary/output
  diabetes-medication-detemir---primary:
    run: diabetes-medication-detemir---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule69
      potentialCases:
        id: potentialCases
        source: diabetes-medication-sandoz---primary/output
  diabetes-medication-sanofi---primary:
    run: diabetes-medication-sanofi---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule70
      potentialCases:
        id: potentialCases
        source: diabetes-medication-detemir---primary/output
  diabetes-medication-terumo---primary:
    run: diabetes-medication-terumo---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule71
      potentialCases:
        id: potentialCases
        source: diabetes-medication-sanofi---primary/output
  disposable-diabetes-medication---primary:
    run: disposable-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule72
      potentialCases:
        id: potentialCases
        source: diabetes-medication-terumo---primary/output
  diabetes-medication-suspension---primary:
    run: diabetes-medication-suspension---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule73
      potentialCases:
        id: potentialCases
        source: disposable-diabetes-medication---primary/output
  diabetes-medication-rosiglitazone---primary:
    run: diabetes-medication-rosiglitazone---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule74
      potentialCases:
        id: potentialCases
        source: diabetes-medication-suspension---primary/output
  diabetes-medication-starlix---primary:
    run: diabetes-medication-starlix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule75
      potentialCases:
        id: potentialCases
        source: diabetes-medication-rosiglitazone---primary/output
  diabetes-medication-diabetamide---primary:
    run: diabetes-medication-diabetamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule76
      potentialCases:
        id: potentialCases
        source: diabetes-medication-starlix---primary/output
  diabetes-medication-850mg---primary:
    run: diabetes-medication-850mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule77
      potentialCases:
        id: potentialCases
        source: diabetes-medication-diabetamide---primary/output
  diabetes-medication-gliclazide---primary:
    run: diabetes-medication-gliclazide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule78
      potentialCases:
        id: potentialCases
        source: diabetes-medication-850mg---primary/output
  diabetes-medication-celltech---primary:
    run: diabetes-medication-celltech---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule79
      potentialCases:
        id: potentialCases
        source: diabetes-medication-gliclazide---primary/output
  diabetes-medication-human---primary:
    run: diabetes-medication-human---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule80
      potentialCases:
        id: potentialCases
        source: diabetes-medication-celltech---primary/output
  diabetes-medication-modified---primary:
    run: diabetes-medication-modified---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule81
      potentialCases:
        id: potentialCases
        source: diabetes-medication-human---primary/output
  diabetes-medication-clikstar---primary:
    run: diabetes-medication-clikstar---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule82
      potentialCases:
        id: potentialCases
        source: diabetes-medication-modified---primary/output
  diabetes-medication-syringe---primary:
    run: diabetes-medication-syringe---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule83
      potentialCases:
        id: potentialCases
        source: diabetes-medication-clikstar---primary/output
  diabetes-medication-clinipak---primary:
    run: diabetes-medication-clinipak---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule84
      potentialCases:
        id: potentialCases
        source: diabetes-medication-syringe---primary/output
  diabetes-medication-minodiab---primary:
    run: diabetes-medication-minodiab---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule85
      potentialCases:
        id: potentialCases
        source: diabetes-medication-clinipak---primary/output
  diabetes-medication-malix---primary:
    run: diabetes-medication-malix---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule86
      potentialCases:
        id: potentialCases
        source: diabetes-medication-minodiab---primary/output
  diabetes-medication-opticlik---primary:
    run: diabetes-medication-opticlik---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule87
      potentialCases:
        id: potentialCases
        source: diabetes-medication-malix---primary/output
  diabetes-medication-avandia---primary:
    run: diabetes-medication-avandia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule88
      potentialCases:
        id: potentialCases
        source: diabetes-medication-opticlik---primary/output
  diabetes-medication-120mg---primary:
    run: diabetes-medication-120mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule89
      potentialCases:
        id: potentialCases
        source: diabetes-medication-avandia---primary/output
  diabetes-medication-humulin---primary:
    run: diabetes-medication-humulin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule90
      potentialCases:
        id: potentialCases
        source: diabetes-medication-120mg---primary/output
  diabetes-medication-actavis---primary:
    run: diabetes-medication-actavis---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule91
      potentialCases:
        id: potentialCases
        source: diabetes-medication-humulin---primary/output
  diabetes-medication-aspart---primary:
    run: diabetes-medication-aspart---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule92
      potentialCases:
        id: potentialCases
        source: diabetes-medication-actavis---primary/output
  diabetes-medication-semitard---primary:
    run: diabetes-medication-semitard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule93
      potentialCases:
        id: potentialCases
        source: diabetes-medication-aspart---primary/output
  diabetes-medication-covidien---primary:
    run: diabetes-medication-covidien---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule94
      potentialCases:
        id: potentialCases
        source: diabetes-medication-semitard---primary/output
  diabetes-medication-pharmacia---primary:
    run: diabetes-medication-pharmacia---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule95
      potentialCases:
        id: potentialCases
        source: diabetes-medication-covidien---primary/output
  diabetes-medication-glulisine---primary:
    run: diabetes-medication-glulisine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule96
      potentialCases:
        id: potentialCases
        source: diabetes-medication-pharmacia---primary/output
  diabetes-medication-actraphane---primary:
    run: diabetes-medication-actraphane---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule97
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glulisine---primary/output
  diabetes-medication-glipizide---primary:
    run: diabetes-medication-glipizide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule98
      potentialCases:
        id: potentialCases
        source: diabetes-medication-actraphane---primary/output
  diabetes-medication-braun---primary:
    run: diabetes-medication-braun---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule99
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glipizide---primary/output
  diabetes-medication-tolanase---primary:
    run: diabetes-medication-tolanase---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule100
      potentialCases:
        id: potentialCases
        source: diabetes-medication-braun---primary/output
  diabetes-medication-acarbose---primary:
    run: diabetes-medication-acarbose---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule101
      potentialCases:
        id: potentialCases
        source: diabetes-medication-tolanase---primary/output
  diabetes-medication-wockhardt---primary:
    run: diabetes-medication-wockhardt---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule102
      potentialCases:
        id: potentialCases
        source: diabetes-medication-acarbose---primary/output
  diabetes-medication-crystalline---primary:
    run: diabetes-medication-crystalline---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule103
      potentialCases:
        id: potentialCases
        source: diabetes-medication-wockhardt---primary/output
  yellow-diabetes-medication---primary:
    run: yellow-diabetes-medication---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule104
      potentialCases:
        id: potentialCases
        source: diabetes-medication-crystalline---primary/output
  diabetes-medication-daonil---primary:
    run: diabetes-medication-daonil---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule105
      potentialCases:
        id: potentialCases
        source: yellow-diabetes-medication---primary/output
  diabetes-medication-glucamet---primary:
    run: diabetes-medication-glucamet---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule106
      potentialCases:
        id: potentialCases
        source: diabetes-medication-daonil---primary/output
  diabetes-medication-calabren---primary:
    run: diabetes-medication-calabren---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule107
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glucamet---primary/output
  diabetes-medication-eucrea---primary:
    run: diabetes-medication-eucrea---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule108
      potentialCases:
        id: potentialCases
        source: diabetes-medication-calabren---primary/output
  diabetes-medication-monoject---primary:
    run: diabetes-medication-monoject---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule109
      potentialCases:
        id: potentialCases
        source: diabetes-medication-eucrea---primary/output
  diabetes-medication-lentard---primary:
    run: diabetes-medication-lentard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule110
      potentialCases:
        id: potentialCases
        source: diabetes-medication-monoject---primary/output
  diabetes-medication-tolazamide---primary:
    run: diabetes-medication-tolazamide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule111
      potentialCases:
        id: potentialCases
        source: diabetes-medication-lentard---primary/output
  diabetes-medication-glass---primary:
    run: diabetes-medication-glass---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule112
      potentialCases:
        id: potentialCases
        source: diabetes-medication-tolazamide---primary/output
  diabetes-medication-insulatard---primary:
    run: diabetes-medication-insulatard---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule113
      potentialCases:
        id: potentialCases
        source: diabetes-medication-glass---primary/output
  diabetes-medication-sitagliptin---primary:
    run: diabetes-medication-sitagliptin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule114
      potentialCases:
        id: potentialCases
        source: diabetes-medication-insulatard---primary/output
  diabetes-medication-nozzle---primary:
    run: diabetes-medication-nozzle---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule115
      potentialCases:
        id: potentialCases
        source: diabetes-medication-sitagliptin---primary/output
  diabetes-medication-nateglinide---primary:
    run: diabetes-medication-nateglinide---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule116
      potentialCases:
        id: potentialCases
        source: diabetes-medication-nozzle---primary/output
  diabetes-medication-prandin---primary:
    run: diabetes-medication-prandin---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule117
      potentialCases:
        id: potentialCases
        source: diabetes-medication-nateglinide---primary/output
  diabetes-medication-pharm---primary:
    run: diabetes-medication-pharm---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule118
      potentialCases:
        id: potentialCases
        source: diabetes-medication-prandin---primary/output
  diabetes-medication-diabinese---primary:
    run: diabetes-medication-diabinese---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule119
      potentialCases:
        id: potentialCases
        source: diabetes-medication-pharm---primary/output
  diabetes-medication-yentreve---primary:
    run: diabetes-medication-yentreve---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule120
      potentialCases:
        id: potentialCases
        source: diabetes-medication-diabinese---primary/output
  diabetes-medication-euglucon---primary:
    run: diabetes-medication-euglucon---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule121
      potentialCases:
        id: potentialCases
        source: diabetes-medication-yentreve---primary/output
  diabetes-medication-250mg---primary:
    run: diabetes-medication-250mg---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule122
      potentialCases:
        id: potentialCases
        source: diabetes-medication-euglucon---primary/output
  diabetes-medication-pfizer---primary:
    run: diabetes-medication-pfizer---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule123
      potentialCases:
        id: potentialCases
        source: diabetes-medication-250mg---primary/output
  diabetes-medication-bovine---primary:
    run: diabetes-medication-bovine---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule124
      potentialCases:
        id: potentialCases
        source: diabetes-medication-pfizer---primary/output
  diabetes-medication-injection---primary:
    run: diabetes-medication-injection---primary.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule125
      potentialCases:
        id: potentialCases
        source: diabetes-medication-bovine---primary/output
  output-cases:
    run: output-cases.cwl
    out:
    - output
    in:
      inputModule:
        id: inputModule
        source: inputModule126
      potentialCases:
        id: potentialCases
        source: diabetes-medication-injection---primary/output
class: Workflow
inputs:
  inputModule1:
    id: inputModule1
    doc: Js implementation unit
    type: File
  inputModule2:
    id: inputModule2
    doc: Python implementation unit
    type: File
  inputModule3:
    id: inputModule3
    doc: Python implementation unit
    type: File
  inputModule4:
    id: inputModule4
    doc: Python implementation unit
    type: File
  inputModule5:
    id: inputModule5
    doc: Python implementation unit
    type: File
  inputModule6:
    id: inputModule6
    doc: Python implementation unit
    type: File
  inputModule7:
    id: inputModule7
    doc: Python implementation unit
    type: File
  inputModule8:
    id: inputModule8
    doc: Python implementation unit
    type: File
  inputModule9:
    id: inputModule9
    doc: Python implementation unit
    type: File
  inputModule10:
    id: inputModule10
    doc: Python implementation unit
    type: File
  inputModule11:
    id: inputModule11
    doc: Python implementation unit
    type: File
  inputModule12:
    id: inputModule12
    doc: Python implementation unit
    type: File
  inputModule13:
    id: inputModule13
    doc: Python implementation unit
    type: File
  inputModule14:
    id: inputModule14
    doc: Python implementation unit
    type: File
  inputModule15:
    id: inputModule15
    doc: Python implementation unit
    type: File
  inputModule16:
    id: inputModule16
    doc: Python implementation unit
    type: File
  inputModule17:
    id: inputModule17
    doc: Python implementation unit
    type: File
  inputModule18:
    id: inputModule18
    doc: Python implementation unit
    type: File
  inputModule19:
    id: inputModule19
    doc: Python implementation unit
    type: File
  inputModule20:
    id: inputModule20
    doc: Python implementation unit
    type: File
  inputModule21:
    id: inputModule21
    doc: Python implementation unit
    type: File
  inputModule22:
    id: inputModule22
    doc: Python implementation unit
    type: File
  inputModule23:
    id: inputModule23
    doc: Python implementation unit
    type: File
  inputModule24:
    id: inputModule24
    doc: Python implementation unit
    type: File
  inputModule25:
    id: inputModule25
    doc: Python implementation unit
    type: File
  inputModule26:
    id: inputModule26
    doc: Python implementation unit
    type: File
  inputModule27:
    id: inputModule27
    doc: Python implementation unit
    type: File
  inputModule28:
    id: inputModule28
    doc: Python implementation unit
    type: File
  inputModule29:
    id: inputModule29
    doc: Python implementation unit
    type: File
  inputModule30:
    id: inputModule30
    doc: Python implementation unit
    type: File
  inputModule31:
    id: inputModule31
    doc: Python implementation unit
    type: File
  inputModule32:
    id: inputModule32
    doc: Python implementation unit
    type: File
  inputModule33:
    id: inputModule33
    doc: Python implementation unit
    type: File
  inputModule34:
    id: inputModule34
    doc: Python implementation unit
    type: File
  inputModule35:
    id: inputModule35
    doc: Python implementation unit
    type: File
  inputModule36:
    id: inputModule36
    doc: Python implementation unit
    type: File
  inputModule37:
    id: inputModule37
    doc: Python implementation unit
    type: File
  inputModule38:
    id: inputModule38
    doc: Python implementation unit
    type: File
  inputModule39:
    id: inputModule39
    doc: Python implementation unit
    type: File
  inputModule40:
    id: inputModule40
    doc: Python implementation unit
    type: File
  inputModule41:
    id: inputModule41
    doc: Python implementation unit
    type: File
  inputModule42:
    id: inputModule42
    doc: Python implementation unit
    type: File
  inputModule43:
    id: inputModule43
    doc: Python implementation unit
    type: File
  inputModule44:
    id: inputModule44
    doc: Python implementation unit
    type: File
  inputModule45:
    id: inputModule45
    doc: Python implementation unit
    type: File
  inputModule46:
    id: inputModule46
    doc: Python implementation unit
    type: File
  inputModule47:
    id: inputModule47
    doc: Python implementation unit
    type: File
  inputModule48:
    id: inputModule48
    doc: Python implementation unit
    type: File
  inputModule49:
    id: inputModule49
    doc: Python implementation unit
    type: File
  inputModule50:
    id: inputModule50
    doc: Python implementation unit
    type: File
  inputModule51:
    id: inputModule51
    doc: Python implementation unit
    type: File
  inputModule52:
    id: inputModule52
    doc: Python implementation unit
    type: File
  inputModule53:
    id: inputModule53
    doc: Python implementation unit
    type: File
  inputModule54:
    id: inputModule54
    doc: Python implementation unit
    type: File
  inputModule55:
    id: inputModule55
    doc: Python implementation unit
    type: File
  inputModule56:
    id: inputModule56
    doc: Python implementation unit
    type: File
  inputModule57:
    id: inputModule57
    doc: Python implementation unit
    type: File
  inputModule58:
    id: inputModule58
    doc: Python implementation unit
    type: File
  inputModule59:
    id: inputModule59
    doc: Python implementation unit
    type: File
  inputModule60:
    id: inputModule60
    doc: Python implementation unit
    type: File
  inputModule61:
    id: inputModule61
    doc: Python implementation unit
    type: File
  inputModule62:
    id: inputModule62
    doc: Python implementation unit
    type: File
  inputModule63:
    id: inputModule63
    doc: Python implementation unit
    type: File
  inputModule64:
    id: inputModule64
    doc: Python implementation unit
    type: File
  inputModule65:
    id: inputModule65
    doc: Python implementation unit
    type: File
  inputModule66:
    id: inputModule66
    doc: Python implementation unit
    type: File
  inputModule67:
    id: inputModule67
    doc: Python implementation unit
    type: File
  inputModule68:
    id: inputModule68
    doc: Python implementation unit
    type: File
  inputModule69:
    id: inputModule69
    doc: Python implementation unit
    type: File
  inputModule70:
    id: inputModule70
    doc: Python implementation unit
    type: File
  inputModule71:
    id: inputModule71
    doc: Python implementation unit
    type: File
  inputModule72:
    id: inputModule72
    doc: Python implementation unit
    type: File
  inputModule73:
    id: inputModule73
    doc: Python implementation unit
    type: File
  inputModule74:
    id: inputModule74
    doc: Python implementation unit
    type: File
  inputModule75:
    id: inputModule75
    doc: Python implementation unit
    type: File
  inputModule76:
    id: inputModule76
    doc: Python implementation unit
    type: File
  inputModule77:
    id: inputModule77
    doc: Python implementation unit
    type: File
  inputModule78:
    id: inputModule78
    doc: Python implementation unit
    type: File
  inputModule79:
    id: inputModule79
    doc: Python implementation unit
    type: File
  inputModule80:
    id: inputModule80
    doc: Python implementation unit
    type: File
  inputModule81:
    id: inputModule81
    doc: Python implementation unit
    type: File
  inputModule82:
    id: inputModule82
    doc: Python implementation unit
    type: File
  inputModule83:
    id: inputModule83
    doc: Python implementation unit
    type: File
  inputModule84:
    id: inputModule84
    doc: Python implementation unit
    type: File
  inputModule85:
    id: inputModule85
    doc: Python implementation unit
    type: File
  inputModule86:
    id: inputModule86
    doc: Python implementation unit
    type: File
  inputModule87:
    id: inputModule87
    doc: Python implementation unit
    type: File
  inputModule88:
    id: inputModule88
    doc: Python implementation unit
    type: File
  inputModule89:
    id: inputModule89
    doc: Python implementation unit
    type: File
  inputModule90:
    id: inputModule90
    doc: Python implementation unit
    type: File
  inputModule91:
    id: inputModule91
    doc: Python implementation unit
    type: File
  inputModule92:
    id: inputModule92
    doc: Python implementation unit
    type: File
  inputModule93:
    id: inputModule93
    doc: Python implementation unit
    type: File
  inputModule94:
    id: inputModule94
    doc: Python implementation unit
    type: File
  inputModule95:
    id: inputModule95
    doc: Python implementation unit
    type: File
  inputModule96:
    id: inputModule96
    doc: Python implementation unit
    type: File
  inputModule97:
    id: inputModule97
    doc: Python implementation unit
    type: File
  inputModule98:
    id: inputModule98
    doc: Python implementation unit
    type: File
  inputModule99:
    id: inputModule99
    doc: Python implementation unit
    type: File
  inputModule100:
    id: inputModule100
    doc: Python implementation unit
    type: File
  inputModule101:
    id: inputModule101
    doc: Python implementation unit
    type: File
  inputModule102:
    id: inputModule102
    doc: Python implementation unit
    type: File
  inputModule103:
    id: inputModule103
    doc: Python implementation unit
    type: File
  inputModule104:
    id: inputModule104
    doc: Python implementation unit
    type: File
  inputModule105:
    id: inputModule105
    doc: Python implementation unit
    type: File
  inputModule106:
    id: inputModule106
    doc: Python implementation unit
    type: File
  inputModule107:
    id: inputModule107
    doc: Python implementation unit
    type: File
  inputModule108:
    id: inputModule108
    doc: Python implementation unit
    type: File
  inputModule109:
    id: inputModule109
    doc: Python implementation unit
    type: File
  inputModule110:
    id: inputModule110
    doc: Python implementation unit
    type: File
  inputModule111:
    id: inputModule111
    doc: Python implementation unit
    type: File
  inputModule112:
    id: inputModule112
    doc: Python implementation unit
    type: File
  inputModule113:
    id: inputModule113
    doc: Python implementation unit
    type: File
  inputModule114:
    id: inputModule114
    doc: Python implementation unit
    type: File
  inputModule115:
    id: inputModule115
    doc: Python implementation unit
    type: File
  inputModule116:
    id: inputModule116
    doc: Python implementation unit
    type: File
  inputModule117:
    id: inputModule117
    doc: Python implementation unit
    type: File
  inputModule118:
    id: inputModule118
    doc: Python implementation unit
    type: File
  inputModule119:
    id: inputModule119
    doc: Python implementation unit
    type: File
  inputModule120:
    id: inputModule120
    doc: Python implementation unit
    type: File
  inputModule121:
    id: inputModule121
    doc: Python implementation unit
    type: File
  inputModule122:
    id: inputModule122
    doc: Python implementation unit
    type: File
  inputModule123:
    id: inputModule123
    doc: Python implementation unit
    type: File
  inputModule124:
    id: inputModule124
    doc: Python implementation unit
    type: File
  inputModule125:
    id: inputModule125
    doc: Python implementation unit
    type: File
  inputModule126:
    id: inputModule126
    doc: Python implementation unit
    type: File
outputs:
  cases:
    id: cases
    type: File
    outputSource: output-cases/output
    outputBinding:
      glob: '*.csv'
requirements:
  SubworkflowFeatureRequirement: {}
