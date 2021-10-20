.class Landroid/support/design/widget/ThemeUtils;
.super Ljava/lang/Object;
.source "ThemeUtils.java"


# static fields
.field private static final APPCOMPAT_CHECK_ATTRS:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 25
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget v3, Landroid/support/design/R$attr;->colorPrimary:I

    aput v3, v1, v2

    sput-object v0, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    return-void
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 23
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkAppCompatTheme(Landroid/content/Context;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    move-object v3, v0

    sget-object v4, Landroid/support/design/widget/ThemeUtils;->APPCOMPAT_CHECK_ATTRS:[I

    invoke-virtual {v3, v4}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v3

    move-object v1, v3

    .line 29
    move-object v3, v1

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v3

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 30
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 31
    move-object v3, v1

    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 33
    :cond_0
    move v3, v2

    if-eqz v3, :cond_2

    .line 34
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "You need to use a Theme.AppCompat theme (or descendant) with the design library."

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 29
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 37
    :cond_2
    return-void
.end method
