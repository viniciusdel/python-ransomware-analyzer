.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompatApi21.java"


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 4

    .prologue
    .line 57
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 58
    return-void
.end method

.method public static getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 77
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    check-cast v2, Landroid/view/accessibility/AccessibilityWindowInfo;

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChild(I)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static getChildCount(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 73
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getChildCount()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getId(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 53
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getId()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getLayer(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getLayer()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 49
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getParent()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getRoot()Landroid/view/accessibility/AccessibilityNodeInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static getType(Ljava/lang/Object;)I
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->getType()I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 69
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isAccessibilityFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isActive(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 61
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isActive()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static isFocused(Ljava/lang/Object;)Z
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->isFocused()Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public static obtain()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    invoke-static {}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain()Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .prologue
    .line 32
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-static {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->obtain(Landroid/view/accessibility/AccessibilityWindowInfo;)Landroid/view/accessibility/AccessibilityWindowInfo;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public static recycle(Ljava/lang/Object;)V
    .locals 2

    .prologue
    .line 81
    move-object v0, p0

    move-object v1, v0

    check-cast v1, Landroid/view/accessibility/AccessibilityWindowInfo;

    invoke-virtual {v1}, Landroid/view/accessibility/AccessibilityWindowInfo;->recycle()V

    .line 82
    return-void
.end method
