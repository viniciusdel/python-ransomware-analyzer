.class Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;
.super Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "AccessibilityWindowInfoApi21Impl"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    return-void
.end method

.method synthetic constructor <init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V
    .locals 3

    .prologue
    .line 116
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>()V

    return-void
.end method


# virtual methods
.method public getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 154
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v1

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 155
    return-void
.end method

.method public getChild(Ljava/lang/Object;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 179
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v1

    move v4, v2

    invoke-static {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public getChildCount(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 174
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getChildCount(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getId(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 149
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getId(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getLayer(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getLayer(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public getParent(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 144
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getRoot(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 139
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getType(Ljava/lang/Object;)I
    .locals 3

    .prologue
    .line 129
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->getType(Ljava/lang/Object;)I

    move-result v2

    move v0, v2

    return v0
.end method

.method public isAccessibilityFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isActive(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 159
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isActive(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public isFocused(Ljava/lang/Object;)Z
    .locals 3

    .prologue
    .line 164
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->isFocused(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method public obtain()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 119
    move-object v0, p0

    invoke-static {}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public obtain(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 124
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public recycle(Ljava/lang/Object;)V
    .locals 3

    .prologue
    .line 184
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompatApi21;->recycle(Ljava/lang/Object;)V

    .line 185
    return-void
.end method
