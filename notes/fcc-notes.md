## 18-Nov-2023
- In anchor tags, set attribute `target="_blank"` to open link in a new tab. Does this apply for all values of `target`?
- In form elements, the `action` attribute is set to the value the URL the form data will be submitted to
`<label><input type="radio"> cat~</label>`
  - `label` elements will associate the text for an `input` element with the `input` label itself

- form data for buttons is based on `name` and `value` attributes
```html
<label><input id="indoor" type="radio" name="indoor-outdoor">Indoor</label>
<label><input id="outdoor" type="radio" name="indoor-outdoor">Outdoor</label>
```
  - since these radio buttons have no `value` attribute, the form data will include (default) `indoor-outdoor=on`
  - not helpful if you have multiple buttons!
  - for convenience, set `value` of radio buttons to their `id` attribute
- don't have to wrap `input` elements in `label` to make its text clickable
  - can also wrap only text in `label` but give `label` the `for` attribute, and set it it to the same value as the `input`'s `id` attribute
```html
<input id="loving" type="checkbox" name="personality" value="loving" checked> <label for="loving">Loving</label>
<input id="lazy" type="checkbox" name="personality" value="lazy"> <label for="lazy">Lazy</label>
```
-  `fieldset` elements are block-level elements, used to group related sections of elements together in forms
- `legend` is a caption/description for a `fieldset`

![image](https://github.com/0xEddie/cool-tools/assets/36518273/e3f5b628-ef80-4e7c-ad93-985679ea7b47)
