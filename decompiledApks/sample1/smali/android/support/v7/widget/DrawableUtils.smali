.class Landroid/support/v7/widget/DrawableUtils;
.super Ljava/lang/Object;
.source "DrawableUtils.java"


# static fields
.field public static final INSETS_NONE:Landroid/graphics/Rect;

.field private static final TAG:Ljava/lang/String; = "DrawableUtils"

.field private static sInsetsClazz:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 32
    new-instance v1, Landroid/graphics/Rect;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    sput-object v1, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    .line 37
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x12

    if-lt v1, v2, :cond_0

    .line 39
    :try_start_0
    const-string v1, "android.graphics.Insets"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    :cond_0
    :goto_0
    return-void

    .line 40
    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getOpticalBounds(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;
    .locals 14

    .prologue
    .line 53
    move-object v0, p0

    sget-object v10, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    if-eqz v10, :cond_1

    .line 57
    move-object v10, v0

    :try_start_0
    invoke-static {v10}, Landroid/support/v4/graphics/drawable/DrawableCompat;->unwrap(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v10

    move-object v0, v10

    .line 59
    move-object v10, v0

    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    const-string v11, "getOpticalInsets"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Class;

    invoke-virtual {v10, v11, v12}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v10

    move-object v1, v10

    .line 61
    move-object v10, v1

    move-object v11, v0

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    move-object v2, v10

    .line 63
    move-object v10, v2

    if-eqz v10, :cond_3

    .line 65
    new-instance v10, Landroid/graphics/Rect;

    move-object v13, v10

    move-object v10, v13

    move-object v11, v13

    invoke-direct {v11}, Landroid/graphics/Rect;-><init>()V

    move-object v3, v10

    .line 67
    sget-object v10, Landroid/support/v7/widget/DrawableUtils;->sInsetsClazz:Ljava/lang/Class;

    invoke-virtual {v10}, Ljava/lang/Class;->getFields()[Ljava/lang/reflect/Field;

    move-result-object v10

    move-object v4, v10

    move-object v10, v4

    array-length v10, v10

    move v5, v10

    const/4 v10, 0x0

    move v6, v10

    :goto_0
    move v10, v6

    move v11, v5

    if-ge v10, v11, :cond_2

    move-object v10, v4

    move v11, v6

    aget-object v10, v10, v11

    move-object v7, v10

    .line 68
    move-object v10, v7

    invoke-virtual {v10}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v10

    move-object v8, v10

    const/4 v10, -0x1

    move v9, v10

    move-object v10, v8

    invoke-virtual {v10}, Ljava/lang/String;->hashCode()I

    move-result v10

    sparse-switch v10, :sswitch_data_0

    :cond_0
    :goto_1
    move v10, v9

    packed-switch v10, :pswitch_data_0

    .line 67
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 68
    :sswitch_0
    move-object v10, v8

    const-string v11, "left"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x0

    move v9, v10

    goto :goto_1

    :sswitch_1
    move-object v10, v8

    const-string v11, "top"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x1

    move v9, v10

    goto :goto_1

    :sswitch_2
    move-object v10, v8

    const-string v11, "right"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x2

    move v9, v10

    goto :goto_1

    :sswitch_3
    move-object v10, v8

    const-string v11, "bottom"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_0

    const/4 v10, 0x3

    move v9, v10

    goto :goto_1

    .line 70
    :pswitch_0
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->left:I

    .line 71
    goto :goto_2

    .line 73
    :pswitch_1
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->top:I

    .line 74
    goto :goto_2

    .line 76
    :pswitch_2
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->right:I

    .line 77
    goto :goto_2

    .line 79
    :pswitch_3
    move-object v10, v3

    move-object v11, v7

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v11

    iput v11, v10, Landroid/graphics/Rect;->bottom:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 85
    :catch_0
    move-exception v10

    move-object v1, v10

    .line 87
    const-string v10, "DrawableUtils"

    const-string v11, "Couldn\'t obtain the optical insets. Ignoring."

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v10

    .line 93
    :cond_1
    :goto_3
    sget-object v10, Landroid/support/v7/widget/DrawableUtils;->INSETS_NONE:Landroid/graphics/Rect;

    move-object v0, v10

    :goto_4
    return-object v0

    .line 83
    :cond_2
    move-object v10, v3

    move-object v0, v10

    goto :goto_4

    .line 88
    :cond_3
    goto :goto_3

    .line 68
    :sswitch_data_0
    .sparse-switch
        -0x527265d5 -> :sswitch_3
        0x1c155 -> :sswitch_1
        0x32a007 -> :sswitch_0
        0x677c21c -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
