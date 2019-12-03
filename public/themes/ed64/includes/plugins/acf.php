<?php

// Slide 2

$slide2_fields = [
  acf_text([
    'name' => 'text',
    'label' => 'Texte'
  ]),
  acf_image([
    'name' => 'image',
    'label' => 'Image'
  ])
];

$slide2_location = [
  [
    acf_location('page', '13')
  ]
];

acf_field_group([
  'title' => 'Slide 2',
  'fields' => $slide2_fields,
  'style' => 'default',
  'location' => $slide2_location
]);