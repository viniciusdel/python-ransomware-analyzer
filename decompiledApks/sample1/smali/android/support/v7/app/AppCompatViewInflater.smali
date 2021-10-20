.class Landroid/support/v7/app/AppCompatViewInflater;
.super Ljava/lang/Object;
.source "AppCompatViewInflater.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "AppCompatViewInflater"

.field private static final sConstructorMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Constructor",
            "<+",
            "Landroid/view/View;",
            ">;>;"
        }
    .end annotation
.end field

.field private static final sConstructorSignature:[Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private static final sOnClickAttrs:[I


# instance fields
.field private final mConstructorArgs:[Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Class;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const-class v3, Landroid/content/Context;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    const-class v3, Landroid/util/AttributeSet;

    aput-object v3, v1, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    .line 63
    const/4 v0, 0x1

    new-array v0, v0, [I

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    const v3, 0x101026f

    aput v3, v1, v2

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    .line 67
    new-instance v0, Landroid/support/v4/util/ArrayMap;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    invoke-direct {v1}, Landroid/support/v4/util/ArrayMap;-><init>()V

    sput-object v0, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    return-void
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    .line 59
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 70
    move-object v1, v0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    .line 251
    return-void
.end method

.method private checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V
    .locals 12

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v6, v1

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    move-object v3, v6

    .line 180
    move-object v6, v1

    invoke-static {v6}, Landroid/support/v4/view/ViewCompat;->hasOnClickListeners(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v3

    instance-of v6, v6, Landroid/content/ContextWrapper;

    if-nez v6, :cond_1

    .line 192
    :cond_0
    :goto_0
    return-void

    .line 186
    :cond_1
    move-object v6, v3

    move-object v7, v2

    sget-object v8, Landroid/support/v7/app/AppCompatViewInflater;->sOnClickAttrs:[I

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 187
    move-object v6, v4

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 188
    move-object v6, v5

    if-eqz v6, :cond_2

    .line 189
    move-object v6, v1

    new-instance v7, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    move-object v9, v1

    move-object v10, v5

    invoke-direct {v8, v9, v10}, Landroid/support/v7/app/AppCompatViewInflater$DeclaredOnClickListener;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 191
    :cond_2
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 192
    goto :goto_0
.end method

.method private createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Landroid/view/InflateException;
        }
    .end annotation

    .prologue
    .line 196
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    sget-object v6, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/reflect/Constructor;

    move-object v4, v6

    .line 199
    move-object v6, v4

    if-nez v6, :cond_0

    .line 201
    move-object v6, v1

    :try_start_0
    invoke-virtual {v6}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    move-object v7, v3

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v3

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v2

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    :goto_0
    invoke-virtual {v6, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v6

    const-class v7, Landroid/view/View;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->asSubclass(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object v6

    move-object v5, v6

    .line 204
    move-object v6, v5

    sget-object v7, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorSignature:[Ljava/lang/Class;

    invoke-virtual {v6, v7}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v6

    move-object v4, v6

    .line 205
    sget-object v6, Landroid/support/v7/app/AppCompatViewInflater;->sConstructorMap:Ljava/util/Map;

    move-object v7, v2

    move-object v8, v4

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 207
    :cond_0
    move-object v6, v4

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 208
    move-object v6, v4

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    invoke-virtual {v6, v7}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v6

    .line 212
    :goto_1
    return-object v0

    .line 201
    :cond_1
    move-object v7, v2

    goto :goto_0

    .line 209
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 212
    const/4 v6, 0x0

    move-object v0, v6

    goto :goto_1
.end method

.method private createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 11

    .prologue
    .line 147
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v7, v2

    const-string v8, "view"

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 148
    move-object v7, v3

    const/4 v8, 0x0

    const-string v9, "class"

    invoke-interface {v7, v8, v9}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 152
    :cond_0
    move-object v7, v0

    :try_start_0
    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    move-object v9, v1

    aput-object v9, v7, v8

    .line 153
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x1

    move-object v9, v3

    aput-object v9, v7, v8

    .line 155
    const/4 v7, -0x1

    move-object v8, v2

    const/16 v9, 0x2e

    invoke-virtual {v8, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    if-ne v7, v8, :cond_1

    .line 157
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const-string v10, "android.widget."

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v7, v4

    move-object v0, v7

    :goto_0
    return-object v0

    .line 159
    :cond_1
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    const/4 v10, 0x0

    :try_start_1
    invoke-direct {v7, v8, v9, v10}, Landroid/support/v7/app/AppCompatViewInflater;->createView(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/view/View;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v7

    move-object v4, v7

    .line 167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v7, v4

    move-object v0, v7

    goto :goto_0

    .line 161
    :catch_0
    move-exception v7

    move-object v4, v7

    .line 164
    const/4 v7, 0x0

    move-object v5, v7

    .line 167
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v7, v5

    move-object v0, v7

    goto :goto_0

    .line 167
    :catchall_0
    move-exception v7

    move-object v6, v7

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x0

    aput-object v9, v7, v8

    .line 168
    move-object v7, v0

    iget-object v7, v7, Landroid/support/v7/app/AppCompatViewInflater;->mConstructorArgs:[Ljava/lang/Object;

    const/4 v8, 0x1

    const/4 v9, 0x0

    aput-object v9, v7, v8

    move-object v7, v6

    throw v7
.end method

.method private static themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;
    .locals 12

    .prologue
    .line 221
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, v0

    move-object v7, v1

    sget-object v8, Landroid/support/v7/appcompat/R$styleable;->View:[I

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    move-object v4, v6

    .line 222
    const/4 v6, 0x0

    move v5, v6

    .line 223
    move v6, v2

    if-eqz v6, :cond_0

    .line 225
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->View_android_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 227
    :cond_0
    move v6, v3

    if-eqz v6, :cond_1

    move v6, v5

    if-nez v6, :cond_1

    .line 229
    move-object v6, v4

    sget v7, Landroid/support/v7/appcompat/R$styleable;->View_theme:I

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v6

    move v5, v6

    .line 231
    move v6, v5

    if-eqz v6, :cond_1

    .line 232
    const-string v6, "AppCompatViewInflater"

    const-string v7, "app:theme is now deprecated. Please move to using android:theme instead."

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    move-result v6

    .line 236
    :cond_1
    move-object v6, v4

    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 238
    move v6, v5

    if-eqz v6, :cond_3

    move-object v6, v0

    instance-of v6, v6, Landroid/support/v7/view/ContextThemeWrapper;

    if-eqz v6, :cond_2

    move-object v6, v0

    check-cast v6, Landroid/support/v7/view/ContextThemeWrapper;

    invoke-virtual {v6}, Landroid/support/v7/view/ContextThemeWrapper;->getThemeResId()I

    move-result v6

    move v7, v5

    if-eq v6, v7, :cond_3

    .line 242
    :cond_2
    new-instance v6, Landroid/support/v7/view/ContextThemeWrapper;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v0

    move v9, v5

    invoke-direct {v7, v8, v9}, Landroid/support/v7/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    move-object v0, v6

    .line 244
    :cond_3
    move-object v6, v0

    move-object v0, v6

    return-object v0
.end method


# virtual methods
.method public final createView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;ZZZ)Landroid/view/View;
    .locals 17
    .param p3    # Landroid/content/Context;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p4    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 75
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move/from16 v7, p7

    move-object v12, v3

    move-object v8, v12

    .line 79
    move v12, v5

    if-eqz v12, :cond_0

    move-object v12, v1

    if-eqz v12, :cond_0

    .line 80
    move-object v12, v1

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    move-object v3, v12

    .line 82
    :cond_0
    move v12, v6

    if-nez v12, :cond_1

    move v12, v7

    if-eqz v12, :cond_2

    .line 84
    :cond_1
    move-object v12, v3

    move-object v13, v4

    move v14, v6

    move v15, v7

    invoke-static {v12, v13, v14, v15}, Landroid/support/v7/app/AppCompatViewInflater;->themifyContext(Landroid/content/Context;Landroid/util/AttributeSet;ZZ)Landroid/content/Context;

    move-result-object v12

    move-object v3, v12

    .line 87
    :cond_2
    const/4 v12, 0x0

    move-object v9, v12

    .line 90
    move-object v12, v2

    move-object v10, v12

    const/4 v12, -0x1

    move v11, v12

    move-object v12, v10

    invoke-virtual {v12}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_3
    :goto_0
    move v12, v11

    packed-switch v12, :pswitch_data_0

    .line 132
    :goto_1
    move-object v12, v9

    if-nez v12, :cond_4

    move-object v12, v8

    move-object v13, v3

    if-eq v12, v13, :cond_4

    .line 135
    move-object v12, v0

    move-object v13, v3

    move-object v14, v2

    move-object v15, v4

    invoke-direct {v12, v13, v14, v15}, Landroid/support/v7/app/AppCompatViewInflater;->createViewFromTag(Landroid/content/Context;Ljava/lang/String;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v12

    move-object v9, v12

    .line 138
    :cond_4
    move-object v12, v9

    if-eqz v12, :cond_5

    .line 140
    move-object v12, v0

    move-object v13, v9

    move-object v14, v4

    invoke-direct {v12, v13, v14}, Landroid/support/v7/app/AppCompatViewInflater;->checkOnClickListener(Landroid/view/View;Landroid/util/AttributeSet;)V

    .line 143
    :cond_5
    move-object v12, v9

    move-object v0, v12

    return-object v0

    .line 90
    :sswitch_0
    move-object v12, v10

    const-string v13, "TextView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x0

    move v11, v12

    goto :goto_0

    :sswitch_1
    move-object v12, v10

    const-string v13, "ImageView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    move v11, v12

    goto :goto_0

    :sswitch_2
    move-object v12, v10

    const-string v13, "Button"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x2

    move v11, v12

    goto :goto_0

    :sswitch_3
    move-object v12, v10

    const-string v13, "EditText"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x3

    move v11, v12

    goto :goto_0

    :sswitch_4
    move-object v12, v10

    const-string v13, "Spinner"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x4

    move v11, v12

    goto :goto_0

    :sswitch_5
    move-object v12, v10

    const-string v13, "ImageButton"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x5

    move v11, v12

    goto :goto_0

    :sswitch_6
    move-object v12, v10

    const-string v13, "CheckBox"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x6

    move v11, v12

    goto :goto_0

    :sswitch_7
    move-object v12, v10

    const-string v13, "RadioButton"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x7

    move v11, v12

    goto :goto_0

    :sswitch_8
    move-object v12, v10

    const-string v13, "CheckedTextView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x8

    move v11, v12

    goto/16 :goto_0

    :sswitch_9
    move-object v12, v10

    const-string v13, "AutoCompleteTextView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0x9

    move v11, v12

    goto/16 :goto_0

    :sswitch_a
    move-object v12, v10

    const-string v13, "MultiAutoCompleteTextView"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0xa

    move v11, v12

    goto/16 :goto_0

    :sswitch_b
    move-object v12, v10

    const-string v13, "RatingBar"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0xb

    move v11, v12

    goto/16 :goto_0

    :sswitch_c
    move-object v12, v10

    const-string v13, "SeekBar"

    invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/16 v12, 0xc

    move v11, v12

    goto/16 :goto_0

    .line 92
    :pswitch_0
    new-instance v12, Landroid/support/v7/widget/AppCompatTextView;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 93
    goto/16 :goto_1

    .line 95
    :pswitch_1
    new-instance v12, Landroid/support/v7/widget/AppCompatImageView;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 96
    goto/16 :goto_1

    .line 98
    :pswitch_2
    new-instance v12, Landroid/support/v7/widget/AppCompatButton;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 99
    goto/16 :goto_1

    .line 101
    :pswitch_3
    new-instance v12, Landroid/support/v7/widget/AppCompatEditText;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatEditText;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 102
    goto/16 :goto_1

    .line 104
    :pswitch_4
    new-instance v12, Landroid/support/v7/widget/AppCompatSpinner;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 105
    goto/16 :goto_1

    .line 107
    :pswitch_5
    new-instance v12, Landroid/support/v7/widget/AppCompatImageButton;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatImageButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 108
    goto/16 :goto_1

    .line 110
    :pswitch_6
    new-instance v12, Landroid/support/v7/widget/AppCompatCheckBox;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatCheckBox;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 111
    goto/16 :goto_1

    .line 113
    :pswitch_7
    new-instance v12, Landroid/support/v7/widget/AppCompatRadioButton;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatRadioButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 114
    goto/16 :goto_1

    .line 116
    :pswitch_8
    new-instance v12, Landroid/support/v7/widget/AppCompatCheckedTextView;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatCheckedTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 117
    goto/16 :goto_1

    .line 119
    :pswitch_9
    new-instance v12, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 120
    goto/16 :goto_1

    .line 122
    :pswitch_a
    new-instance v12, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatMultiAutoCompleteTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 123
    goto/16 :goto_1

    .line 125
    :pswitch_b
    new-instance v12, Landroid/support/v7/widget/AppCompatRatingBar;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatRatingBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    .line 126
    goto/16 :goto_1

    .line 128
    :pswitch_c
    new-instance v12, Landroid/support/v7/widget/AppCompatSeekBar;

    move-object/from16 v16, v12

    move-object/from16 v12, v16

    move-object/from16 v13, v16

    move-object v14, v3

    move-object v15, v4

    invoke-direct {v13, v14, v15}, Landroid/support/v7/widget/AppCompatSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    move-object v9, v12

    goto/16 :goto_1

    .line 90
    nop

    :sswitch_data_0
    .sparse-switch
        -0x7404ceea -> :sswitch_b
        -0x56c015e7 -> :sswitch_8
        -0x503aa7ad -> :sswitch_a
        -0x37f7066e -> :sswitch_0
        -0x37e04bb3 -> :sswitch_5
        -0x274065a5 -> :sswitch_c
        -0x1440b607 -> :sswitch_4
        0x2e46a6ed -> :sswitch_7
        0x431b5280 -> :sswitch_1
        0x5445f9ba -> :sswitch_9
        0x5f7507c3 -> :sswitch_6
        0x63577677 -> :sswitch_3
        0x77471352 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method
