.class public Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
.super Ljava/lang/Object;
.source "AccessibilityWindowInfoCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;,
        Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;,
        Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;,
        Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;
    }
.end annotation


# static fields
.field private static final IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

.field public static final TYPE_ACCESSIBILITY_OVERLAY:I = 0x4

.field public static final TYPE_APPLICATION:I = 0x1

.field public static final TYPE_INPUT_METHOD:I = 0x2

.field public static final TYPE_SYSTEM:I = 0x3

.field private static final UNDEFINED:I = -0x1


# instance fields
.field private mInfo:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 189
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 190
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoApi21Impl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    new-instance v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoStubImpl;-><init>(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$1;)V

    sput-object v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    goto :goto_0
.end method

.method private constructor <init>(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 245
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    .line 246
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    .line 247
    return-void
.end method

.method public static obtain()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 1

    .prologue
    .line 364
    sget-object v0, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    invoke-interface {v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v0

    return-object v0
.end method

.method public static obtain(Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 376
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->obtain(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method private static typeToString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 437
    move v0, p0

    move v1, v0

    packed-switch v1, :pswitch_data_0

    .line 451
    const-string v1, "<UNKNOWN>"

    move-object v0, v1

    :goto_0
    return-object v0

    .line 439
    :pswitch_0
    const-string v1, "TYPE_APPLICATION"

    move-object v0, v1

    goto :goto_0

    .line 442
    :pswitch_1
    const-string v1, "TYPE_INPUT_METHOD"

    move-object v0, v1

    goto :goto_0

    .line 445
    :pswitch_2
    const-string v1, "TYPE_SYSTEM"

    move-object v0, v1

    goto :goto_0

    .line 448
    :pswitch_3
    const-string v1, "TYPE_ACCESSIBILITY_OVERLAY"

    move-object v0, v1

    goto :goto_0

    .line 437
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method static wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 5

    .prologue
    .line 239
    move-object v0, p0

    move-object v1, v0

    if-eqz v1, :cond_0

    .line 240
    new-instance v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .line 242
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    if-ne v3, v4, :cond_0

    .line 399
    const/4 v3, 0x1

    move v0, v3

    .line 415
    :goto_0
    return v0

    .line 401
    :cond_0
    move-object v3, v1

    if-nez v3, :cond_1

    .line 402
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 404
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_2

    .line 405
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 407
    :cond_2
    move-object v3, v1

    check-cast v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-object v2, v3

    .line 408
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v3, :cond_3

    .line 409
    move-object v3, v2

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-eqz v3, :cond_4

    .line 410
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 412
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 413
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 415
    :cond_4
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getBoundsInScreen(Landroid/graphics/Rect;)V
    .locals 5

    .prologue
    .line 306
    move-object v0, p0

    move-object v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getBoundsInScreen(Ljava/lang/Object;Landroid/graphics/Rect;)V

    .line 307
    return-void
.end method

.method public getChild(I)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 5

    .prologue
    .line 354
    move-object v0, p0

    move v1, p1

    sget-object v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    move v4, v1

    invoke-interface {v2, v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChild(Ljava/lang/Object;I)Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getChildCount()I
    .locals 3

    .prologue
    .line 344
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getChildCount(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getId()I
    .locals 3

    .prologue
    .line 297
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getId(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getLayer()I
    .locals 3

    .prologue
    .line 270
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getLayer(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public getParent()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;
    .locals 3

    .prologue
    .line 288
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getParent(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getRoot()Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;
    .locals 3

    .prologue
    .line 279
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getRoot(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;->wrapNonNullInstance(Ljava/lang/Object;)Landroid/support/v4/view/accessibility/AccessibilityNodeInfoCompat;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getType()I
    .locals 3

    .prologue
    .line 260
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->getType(Ljava/lang/Object;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public hashCode()I
    .locals 2

    .prologue
    .line 393
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0
.end method

.method public isAccessibilityFocused()Z
    .locals 3

    .prologue
    .line 335
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isAccessibilityFocused(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isActive()Z
    .locals 3

    .prologue
    .line 317
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isActive(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public isFocused()Z
    .locals 3

    .prologue
    .line 326
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->isFocused(Ljava/lang/Object;)Z

    move-result v1

    move v0, v1

    return v0
.end method

.method public recycle()V
    .locals 3

    .prologue
    .line 388
    move-object v0, p0

    sget-object v1, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->IMPL:Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->mInfo:Ljava/lang/Object;

    invoke-interface {v1, v2}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat$AccessibilityWindowInfoImpl;->recycle(Ljava/lang/Object;)V

    .line 389
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 420
    move-object v0, p0

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, v3

    .line 421
    new-instance v3, Landroid/graphics/Rect;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Landroid/graphics/Rect;-><init>()V

    move-object v2, v3

    .line 422
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getBoundsInScreen(Landroid/graphics/Rect;)V

    .line 423
    move-object v3, v1

    const-string v4, "AccessibilityWindowInfo["

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 424
    move-object v3, v1

    const-string v4, "id="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getId()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 425
    move-object v3, v1

    const-string v4, ", type="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getType()I

    move-result v4

    invoke-static {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->typeToString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 426
    move-object v3, v1

    const-string v4, ", layer="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getLayer()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 427
    move-object v3, v1

    const-string v4, ", bounds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 428
    move-object v3, v1

    const-string v4, ", focused="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isFocused()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 429
    move-object v3, v1

    const-string v4, ", active="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->isActive()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 430
    move-object v3, v1

    const-string v4, ", hasParent="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getParent()Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;

    move-result-object v4

    if-eqz v4, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 431
    move-object v3, v1

    const-string v4, ", hasChildren="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/view/accessibility/AccessibilityWindowInfoCompat;->getChildCount()I

    move-result v4

    if-lez v4, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 432
    move-object v3, v1

    const/16 v4, 0x5d

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 433
    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0

    .line 430
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 431
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method
