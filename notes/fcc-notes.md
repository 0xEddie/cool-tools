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

## 20-Nov-2023
- Primary colors
  - one of RGB is set to max (255) in an RBG function: `rgb(255, 0, 0)`
- Secondary colors
  - two of RGB are maxed in an RGB function `rgb(0, 255, 255)`
- Tertiary colors
  - one color is maxed, combined with a second color at half intensity `rgb(0, 255, 127)`
- Complementary colors
  - Two colors opposite each other on the color wheel
  - When combined will create gray
  - When side by side, will contrast and appear brighter
    - text on a complementary background is hard to read
      ```css
      p {
        color: rgb(255, 0, 0);
        background-color: rgb(0, 255, 255);
      }
      ```
- Colors can also be expressed in CSS in either hexadecimal or HSL (hue, saturation, lightness
  - `color: #007F00;`
  - `color: hsl(240, 100%, 50%)`
- the `linear-gradient` function actually creates an `image` element, and is usually paired with the `background` property which can accept an image as a value `background: linear-gradient(90deg, rgb(255, 0, 0), rgb(0, 255, 0))`
-  in this red-black gradient, the transition from red to black takes place at the 90% point along the gradient line (so red takes up 90% of the space) `linear-gradient(90deg, red 90%, black);`
  
