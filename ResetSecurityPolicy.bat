@Echo Reset Local Security Policy
secedit /configure /cfg %windir%\inf\defltbase.inf /db defltbase.sdb /verbose
@pause