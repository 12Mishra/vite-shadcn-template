import { toast as sonnerToast } from "sonner"

type ToastType = "default" | "success" | "error" | "info" | "warning" | "loading"

interface ToastOptions {
  title?: string
  description?: string
  type?: ToastType
  duration?: number
  action?: {
    label: string
    onClick: () => void
  }
}

export function useToast() {
  const toast = ({
    title,
    description,
    type = "default",
    duration = 4000,
    action,
  }: ToastOptions) => {
    if (type === "default") {
      sonnerToast(title ?? "", {
        description,
        duration,
        action,
      })
    } else {
      sonnerToast[type](title ?? "", {
        description,
        duration,
        action,
      })
    }
  }

  return { toast }
}
