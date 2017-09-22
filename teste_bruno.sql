/* Formatted on 2017/07/10 15:04 (Formatter Plus v4.8.7) */
SELECT f.*, valor_cota_ficha - valor_cota_plano diferenca
  FROM (SELECT   dat_deposi, val_contri_partic, qtd_cota_contri_partic,
                 ROUND ((val_contri_partic / qtd_cota_contri_partic),
                        8
                       ) valor_cota_ficha,
                 (SELECT val_cota
                    FROM valor_cota_plano
                   WHERE num_seq_plano = 103
                     AND dat_posic_cota = dat_deposi
                     AND num_seq_perfil_invest >= 13) valor_cota_plano
            FROM historico_financeiro_pago
           WHERE num_seq_partic_plano = 193363
             AND dat_deposi BETWEEN TO_DATE ('01/01/2012', 'dd/mm/yyyy')
                                AND TO_DATE ('30/06/2017', 'dd/mm/yyyy')
        ORDER BY dat_deposi) f;




/* Formatted on 2017/07/10 15:04 (Formatter Plus v4.8.7) */
SELECT f.*, valor_cota_ficha - valor_cota_plano diferenca
  FROM (SELECT   dat_deposi, val_contri_partic, qtd_cota_contri_partic,
                 ROUND ((val_contri_partic / qtd_cota_contri_partic),
                        8
                       ) valor_cota_ficha,
                 (SELECT val_cota
                    FROM valor_cota_plano
                   WHERE num_seq_plano = 16
                     AND dat_posic_cota = dat_deposi
                     AND num_seq_perfil_invest >= 13) valor_cota_plano,
                 NOM_USU_INCL    
            FROM historico_financeiro_pago
           WHERE num_seq_partic_plano = 8513
           AND ind_orig_info = 'R'
             AND dat_deposi BETWEEN TO_DATE ('01/01/2011', 'dd/mm/yyyy')
                                AND TO_DATE ('30/06/2017', 'dd/mm/yyyy')
             AND qtd_cota_contri_partic > 0                                
        ORDER BY dat_deposi) f;


select *
from participante_plano
where num_seq_partic_plano = 193363                   
                     


select * from a_historico_financeiro_pago 
WHERE dat_incl >= sysdate - 4
AND ind_orig_info = 'R'
AND num_seq_partic_plano = 193363




select 47  / 31.26470393 from dual


1,50688735
1,50960266
1,50893039
1,50877637

