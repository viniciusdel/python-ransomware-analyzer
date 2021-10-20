.class Landroid/support/v4/widget/PopupWindowCompatGingerbread;
.super Ljava/lang/Object;
.source "PopupWindowCompatGingerbread.java"


# static fields
.field private static sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sGetWindowLayoutTypeMethodAttempted:Z

.field private static sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

.field private static sSetWindowLayoutTypeMethodAttempted:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getWindowLayoutType(Landroid/widget/PopupWindow;)I
    .locals 5

    .prologue
    .line 55
    move-object v0, p0

    sget-boolean v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    if-nez v2, :cond_0

    .line 57
    :try_start_0
    const-class v2, Landroid/widget/PopupWindow;

    const-string v3, "getWindowLayoutType"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 59
    sget-object v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 63
    :goto_0
    const/4 v2, 0x1

    sput-boolean v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethodAttempted:Z

    .line 66
    :cond_0
    sget-object v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_1

    .line 68
    :try_start_1
    sget-object v2, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sGetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    move-object v3, v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result v2

    move v0, v2

    .line 73
    :goto_1
    return v0

    .line 60
    :catch_0
    move-exception v2

    move-object v1, v2

    goto :goto_0

    .line 69
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 73
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_1
.end method

.method static setWindowLayoutType(Landroid/widget/PopupWindow;I)V
    .locals 10

    .prologue
    .line 34
    move-object v0, p0

    move v1, p1

    sget-boolean v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    if-nez v3, :cond_0

    .line 36
    :try_start_0
    const-class v3, Landroid/widget/PopupWindow;

    const-string v4, "setWindowLayoutType"

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Class;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    sput-object v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    .line 38
    sget-object v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 42
    :goto_0
    const/4 v3, 0x1

    sput-boolean v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethodAttempted:Z

    .line 45
    :cond_0
    sget-object v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_1

    .line 47
    :try_start_1
    sget-object v3, Landroid/support/v4/widget/PopupWindowCompatGingerbread;->sSetWindowLayoutTypeMethod:Ljava/lang/reflect/Method;

    move-object v4, v0

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    const/4 v7, 0x0

    move v8, v1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v3

    .line 52
    :cond_1
    :goto_1
    return-void

    .line 39
    :catch_0
    move-exception v3

    move-object v2, v3

    goto :goto_0

    .line 48
    :catch_1
    move-exception v3

    move-object v2, v3

    goto :goto_1
.end method
