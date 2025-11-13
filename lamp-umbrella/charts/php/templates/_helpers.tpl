{{- define "php.name" -}}
php
{{- end }}

{{- define "php.fullname" -}}
{{ include "php.name" . }}-{{ .Release.Name }}
{{- end }}
