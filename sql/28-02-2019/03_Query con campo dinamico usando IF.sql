/* Query per selezionare nome, cognome e tipo lavoro del lavoratore
e anche nome, cognome e tipo lavoro del capo. includendo anche il presidente
Si fa riferimento nella stessa tabella che va quindi messa in join con un AS
 */
/* Metto un campo dinamico usando la funzione IF (cond,vero,falso) */
select em.lastName,em.firstName, em.jobTitle,  ch.lastName as Boss_lastName,ch.firstName as Boss_firstName, if (ch.lastName is null, "CAPO",ch.jobTitle) as Boss_jobTitle
	from employees em 
	/* mettendo LEFT JOIN prendo anche il presidente, che non usciva nella precedente query */
    left join employees ch
    on em.reportsTo = ch.employeeNumber
    
    
    /*order by lastName,firstName*/