return {
  cmd = { 'xcrun', 'sourcekit-lsp' },
  filetypes = { 'swift', 'objc', 'objcpp', 'c', 'cpp' },
  root_markers = {
    'Package.swift',
    'buildServer.json',
    '*.xcodeproj',
    '*.xcworkspace',
    '.git',
  },
  capabilities = {
    workspace = {
      didChangeWatchedFiles = { dynamicRegistration = true },
    },
  },
}
