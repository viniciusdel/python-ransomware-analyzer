.class Landroid/support/v4/widget/CompoundButtonCompatDonut;
.super Ljava/lang/Object;
.source "CompoundButtonCompatDonut.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "CompoundButtonCompatDonut"

.field private static sButtonDrawableField:Ljava/lang/reflect/Field;

.field private static sButtonDrawableFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 27
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getButtonDrawable(Landroid/widget/CompoundButton;)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 61
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    if-nez v2, :cond_0

    .line 63
    :try_start_0
    const-class v2, Landroid/widget/CompoundButton;

    const-string v3, "mButtonDrawable"

    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 64
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableFieldFetched:Z

    .line 71
    :cond_0
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    if-eqz v2, :cond_1

    .line 73
    :try_start_1
    sget-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/Drawable;
    :try_end_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_1

    move-object v0, v2

    .line 79
    :goto_1
    return-object v0

    .line 65
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 66
    const-string v2, "CompoundButtonCompatDonut"

    const-string v3, "Failed to retrieve mButtonDrawable field"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_0

    .line 74
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 75
    const-string v2, "CompoundButtonCompatDonut"

    const-string v3, "Failed to get button drawable via reflection"

    move-object v4, v1

    invoke-static {v2, v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 76
    const/4 v2, 0x0

    sput-object v2, Landroid/support/v4/widget/CompoundButtonCompatDonut;->sButtonDrawableField:Ljava/lang/reflect/Field;

    .line 79
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_1
.end method

.method static getButtonTintList(Landroid/widget/CompoundButton;)Landroid/content/res/ColorStateList;
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v1, :cond_0

    .line 42
    move-object v1, v0

    check-cast v1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintList()Landroid/content/res/ColorStateList;

    move-result-object v1

    move-object v0, v1

    .line 44
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method static getButtonTintMode(Landroid/widget/CompoundButton;)Landroid/graphics/PorterDuff$Mode;
    .locals 2

    .prologue
    .line 54
    move-object v0, p0

    move-object v1, v0

    instance-of v1, v1, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v1, :cond_0

    .line 55
    move-object v1, v0

    check-cast v1, Landroid/support/v4/widget/TintableCompoundButton;

    invoke-interface {v1}, Landroid/support/v4/widget/TintableCompoundButton;->getSupportButtonTintMode()Landroid/graphics/PorterDuff$Mode;

    move-result-object v1

    move-object v0, v1

    .line 57
    :goto_0
    return-object v0

    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method static setButtonTintList(Landroid/widget/CompoundButton;Landroid/content/res/ColorStateList;)V
    .locals 4

    .prologue
    .line 35
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v2, :cond_0

    .line 36
    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/TintableCompoundButton;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintList(Landroid/content/res/ColorStateList;)V

    .line 38
    :cond_0
    return-void
.end method

.method static setButtonTintMode(Landroid/widget/CompoundButton;Landroid/graphics/PorterDuff$Mode;)V
    .locals 4

    .prologue
    .line 48
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    instance-of v2, v2, Landroid/support/v4/widget/TintableCompoundButton;

    if-eqz v2, :cond_0

    .line 49
    move-object v2, v0

    check-cast v2, Landroid/support/v4/widget/TintableCompoundButton;

    move-object v3, v1

    invoke-interface {v2, v3}, Landroid/support/v4/widget/TintableCompoundButton;->setSupportButtonTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 51
    :cond_0
    return-void
.end method
