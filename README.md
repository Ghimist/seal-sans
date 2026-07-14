# Seal Sans

## 壹、緣起與適用範圍
**（代作 AI 謹識）**  
本字型專爲 Unicode 18.0 新增「篆書區塊」（Seal Block，U+3D000–3FC3F）而製，兼及聲調符號 U+302A–U+302F，用以標注漢語調類，並假諺文（訓民正音）去、上二聲符號以廣其用。惟全篇字形皆屬草創，未經精雕，體態樸拙，不堪細賞，唯望拋磚引玉，敬候方家斧正。

***(Authored by AI on behalf of the creator)***  
This typeface is designed for the newly added Seal Script block in Unicode 18.0 (U+3D000–3FC3F). It also supports the tone marks U+302A–302F, intended for annotating Chinese tonal categories, and borrows two Hangul (Korean) tone marks for extended use. All glyphs are hastily drafted without refinement; they are crude and unaesthetic, offered only as a stopgap in the hope of inspiring better contributions.

---

## 貳、聲調符號釋例

### 陰調與陽調
U+302A（陰平）、U+302B（陰上）、U+302C（陰去）、U+302D（陰入）四符，其預設字形皆作空廓（open outline）。若於其後附加變體選擇子 U+FE00（Variation Selector 1），則字形轉爲實心（solid），依次對應陽平、陽上、陽去、陽入，示陽聲紐（濁輔音）。陰陽調號若同現一字（如先置陰平，再附陽平），則合爲一圓環，中綴實點（⊙），以表複合調類。其點徑、環徑之推算，詳見下節。

The four marks U+302A (dark level), U+302B (dark rising), U+302C (dark departing), and U+302D (dark entering) default to open outline forms. When followed by Variation Selector 1 (U+FE00), they become solid, representing the corresponding light tones (light level, light rising, light departing, light entering), indicating a voiced initial. If a dark and a light mark are applied to the same base character, they merge into a circle with a central solid dot (⊙), signifying a compound tone. The diameters of these elements are calculated as below.

### 諺文聲調
U+302E 本爲諺文（訓民正音，今稱韓㐎／한글）去聲符號，U+302F 爲諺文上聲符號（雙點），今一併收用，以便兼注韓語音韻。㐎即「글」（geul）之合音省寫，猶如日語送假名之例。

U+302E is originally the Hangul (Hunminjeongeum) departing tone mark, and U+302F is the Hangul rising tone mark (double dot). They are included here for annotating Korean phonology. The character 㐎 is a ligature for “글” (geul), analogous to okurigana in Japanese.

---

## 參、圈點徑度（設計參數）
圓圈凡三層，曰外、中、內。徑度以自然常數 _e_ 爲基，分依千字框（upm）1024 與 1000 推算，式如左。

- **外徑**  
  $$\left\{\begin{aligned} 188.35427 &= \frac{1}{2e}\times 1024 \\ 183.93972 &= \frac{1}{2e}\times 1000 \end{aligned}\right.$$
- **中徑**  
  $$\left\{\begin{aligned} 119.06261 &= \left(1-\frac{2}{2e}\right)\times 188.35427 \\ 116.27208 &= \left(1-\frac{2}{2e}\right)\times 183.93972 \end{aligned}\right.$$
- **內徑（點徑）**  
  $$\left\{\begin{aligned} 49.77094 &= \left(1-\frac{4}{2e}\right)\times 188.35427 = \frac{2e-4}{2e} \cdot \frac{1024}{2e} \\ 48.60444 &= \left(1-\frac{4}{2e}\right)\times 183.93972 \end{aligned}\right.$$

Three concentric circles—outer, middle, and inner—are defined. Their diameters are derived from the natural constant _e_ and the two common em scales (1024 and 1000 upm), as follows:

- **Outer diameter**  
  $$\left\{\begin{aligned} 188.35427 &= \frac{1}{2e}\times 1024 \\ 183.93972 &= \frac{1}{2e}\times 1000 \end{aligned}\right.$$
- **Middle diameter**  
  $$\left\{\begin{aligned} 119.06261 &= \left(1-\frac{2}{2e}\right)\times 188.35427 \\ 116.27208 &= \left(1-\frac{2}{2e}\right)\times 183.93972 \end{aligned}\right.$$
- **Inner diameter (dot)**  
  $$\left\{\begin{aligned} 49.77094 &= \left(1-\frac{4}{2e}\right)\times 188.35427 = \frac{2e-4}{2e} \cdot \frac{1024}{2e} \\ 48.60444 &= \left(1-\frac{4}{2e}\right)\times 183.93972 \end{aligned}\right.$$

---

## 肆、用法
根目錄備有字型檔 `SealSans.woff2`。網頁使用可直連 CDN 之 CSS：  
`<link rel="stylesheet" href="https://cdn.example.com/seal-sans/seal-sans.css">`  
或取內嵌 base64 之 CSS（`seal-sans_base64_v1.css`），無需額外請求字型檔。字族名爲 `Seal Sans` 或 `Seal Sans base64`（視所用 CSS 而定），於 `font-family` 指定即可。

The font file `SealSans.woff2` is provided in the repository root. For web use, link the CDN-hosted CSS:  
`<link rel="stylesheet" href="https://cdn.example.com/seal-sans/seal-sans.css">`  
or use the base64-embedded CSS (`seal-sans_base64_v1.css`), which requires no additional font request. The font family is `Seal Sans` or `Seal Sans base64` (depending on the CSS file); set it in your `font-family` declaration.

---

## 伍、附言
此字體實乃倉猝掇拾，結體鬆散，點畫粗陋，殊欠美觀。權供一時應急，深盼方家不吝斧削，以收拋磚引玉之效。若有教正，不勝感荷。

This font was hastily assembled; its forms are loose and its strokes crude, lacking any aesthetic quality. It is offered merely as a provisional tool, in the hope that it will inspire polished alternatives. All critiques and improvements are most welcome.

---
**深求 AI（DeepSeek）代作**  
深求者，探賾索隱、鈎深致遠之義也。 | *DeepSeek AI — “deep seeking, profound inquiry.”*