#!/bin/bash

components=(
  accordion
  alert
  alert-dialog
  aspect-ratio
  avatar
  badge
  breadcrumb
  calendar
  card
  carousel
  chart
  checkbox
  collapsible
  combobox
  command
  context-menu
  data-table
  date-picker
  dialog
  drawer
  dropdown-menu
  form                # react-hook-form abstraction
  hover-card
  input
  input-otp
  label
  menubar
  navigation-menu
  pagination
  popover
  progress
  radio-group
  resizable
  scroll-area
  select
  separator
  sheet
  sidebar
  skeleton
  slider
  sonner             # notification (toast) system
  switch
  table
  tabs
  textarea
  toast
  toggle
  toggle-group
  tooltip
  typography
)

echo "🧩 Installing ${#components[@]} shadcn/ui components..."

for component in "${components[@]}"; do
  echo "➤ Adding $component..."
  npx shadcn-ui@latest add $component
done

echo "✅ All components installed!"
