.class public Landroid/support/v7/widget/AppCompatPopupWindow;
.super Landroid/widget/PopupWindow;
.source "AppCompatPopupWindow.java"


# static fields
.field private static final COMPAT_OVERLAP_ANCHOR:Z

.field private static final TAG:Ljava/lang/String; = "AppCompatPopupWindow"


# instance fields
.field private mOverlapAnchor:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 39
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    return-void

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 10

    .prologue
    .line 44
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move v8, v3

    invoke-direct {v5, v6, v7, v8}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 46
    move-object v5, v1

    move-object v6, v2

    sget-object v7, Landroid/support/v7/appcompat/R$styleable;->PopupWindow:[I

    move v8, v3

    const/4 v9, 0x0

    invoke-static {v5, v6, v7, v8, v9}, Landroid/support/v7/widget/TintTypedArray;->obtainStyledAttributes(Landroid/content/Context;Landroid/util/AttributeSet;[III)Landroid/support/v7/widget/TintTypedArray;

    move-result-object v5

    move-object v4, v5

    .line 48
    move-object v5, v4

    sget v6, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/TintTypedArray;->hasValue(I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 49
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_overlapAnchor:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/support/v7/widget/TintTypedArray;->getBoolean(IZ)Z

    move-result v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/AppCompatPopupWindow;->setSupportOverlapAnchor(Z)V

    .line 52
    :cond_0
    move-object v5, v0

    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->PopupWindow_android_popupBackground:I

    invoke-virtual {v6, v7}, Landroid/support/v7/widget/TintTypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/support/v7/widget/AppCompatPopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 53
    move-object v5, v4

    invoke-virtual {v5}, Landroid/support/v7/widget/TintTypedArray;->recycle()V

    .line 55
    sget v5, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0xe

    if-ge v5, v6, :cond_1

    .line 58
    move-object v5, v0

    invoke-static {v5}, Landroid/support/v7/widget/AppCompatPopupWindow;->wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V

    .line 60
    :cond_1
    return-void
.end method

.method private static wrapOnScrollChangedListener(Landroid/widget/PopupWindow;)V
    .locals 12

    .prologue
    .line 92
    move-object v0, p0

    :try_start_0
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mAnchor"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v1, v4

    .line 93
    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 95
    const-class v4, Landroid/widget/PopupWindow;

    const-string v5, "mOnScrollChangedListener"

    invoke-virtual {v4, v5}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v4

    move-object v2, v4

    .line 97
    move-object v4, v2

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 99
    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/ViewTreeObserver$OnScrollChangedListener;

    move-object v3, v4

    .line 104
    move-object v4, v2

    move-object v5, v0

    new-instance v6, Landroid/support/v7/widget/AppCompatPopupWindow$1;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v1

    move-object v9, v0

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/widget/AppCompatPopupWindow$1;-><init>(Ljava/lang/reflect/Field;Landroid/widget/PopupWindow;Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    :goto_0
    return-void

    .line 119
    :catch_0
    move-exception v4

    move-object v1, v4

    .line 120
    const-string v4, "AppCompatPopupWindow"

    const-string v5, "Exception while installing workaround OnScrollChangedListener"

    move-object v6, v1

    invoke-static {v4, v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v4

    goto :goto_0
.end method


# virtual methods
.method public getSupportOverlapAnchor()Z
    .locals 2

    .prologue
    .line 139
    move-object v0, p0

    sget-boolean v1, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v1, :cond_0

    .line 140
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    move v0, v1

    .line 142
    :goto_0
    return v0

    :cond_0
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/widget/PopupWindowCompat;->getOverlapAnchor(Landroid/widget/PopupWindow;)Z

    move-result v1

    move v0, v1

    goto :goto_0
.end method

.method public setSupportOverlapAnchor(Z)V
    .locals 4

    .prologue
    .line 128
    move-object v0, p0

    move v1, p1

    sget-boolean v2, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v2, :cond_0

    .line 129
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    .line 133
    :goto_0
    return-void

    .line 131
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/widget/PopupWindowCompat;->setOverlapAnchor(Landroid/widget/PopupWindow;Z)V

    goto :goto_0
.end method

.method public showAsDropDown(Landroid/view/View;II)V
    .locals 8

    .prologue
    .line 64
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    sget-boolean v4, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v4, :cond_0

    .line 66
    move v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v5

    sub-int/2addr v4, v5

    move v3, v4

    .line 68
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    move v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 69
    return-void
.end method

.method public showAsDropDown(Landroid/view/View;III)V
    .locals 10
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 74
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    sget-boolean v5, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v5, :cond_0

    .line 76
    move v5, v3

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getHeight()I

    move-result v6

    sub-int/2addr v5, v6

    move v3, v5

    .line 78
    :cond_0
    move-object v5, v0

    move-object v6, v1

    move v7, v2

    move v8, v3

    move v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;III)V

    .line 79
    return-void
.end method

.method public update(Landroid/view/View;IIII)V
    .locals 12

    .prologue
    .line 83
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move/from16 v4, p4

    move/from16 v5, p5

    sget-boolean v6, Landroid/support/v7/widget/AppCompatPopupWindow;->COMPAT_OVERLAP_ANCHOR:Z

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v7/widget/AppCompatPopupWindow;->mOverlapAnchor:Z

    if-eqz v6, :cond_0

    .line 85
    move v6, v3

    move-object v7, v1

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    sub-int/2addr v6, v7

    move v3, v6

    .line 87
    :cond_0
    move-object v6, v0

    move-object v7, v1

    move v8, v2

    move v9, v3

    move v10, v4

    move v11, v5

    invoke-super/range {v6 .. v11}, Landroid/widget/PopupWindow;->update(Landroid/view/View;IIII)V

    .line 88
    return-void
.end method
