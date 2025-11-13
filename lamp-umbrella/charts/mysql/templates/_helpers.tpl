{{- define "mysql.name" -}}
mysql
{{- end }}

{{- define "mysql.fullname" -}}
{{ include "mysql.name" . }}-{{ .Release.Name }}
{{- end }}
