.class Landroid/support/v4/widget/TextViewCompatDonut;
.super Ljava/lang/Object;
.source "TextViewCompatDonut.java"


# static fields
.field private static final LINES:I = 0x1

.field private static final LOG_TAG:Ljava/lang/String; = "TextViewCompatDonut"

.field private static sMaxModeField:Ljava/lang/reflect/Field;

.field private static sMaxModeFieldFetched:Z

.field private static sMaximumField:Ljava/lang/reflect/Field;

.field private static sMaximumFieldFetched:Z

.field private static sMinModeField:Ljava/lang/reflect/Field;

.field private static sMinModeFieldFetched:Z

.field private static sMinimumField:Ljava/lang/reflect/Field;

.field private static sMinimumFieldFetched:Z


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 24
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getMaxLines(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 40
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeFieldFetched:Z

    if-nez v1, :cond_0

    .line 41
    const-string v1, "mMaxMode"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeField:Ljava/lang/reflect/Field;

    .line 42
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeFieldFetched:Z

    .line 44
    :cond_0
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaxModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 46
    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumFieldFetched:Z

    if-nez v1, :cond_1

    .line 47
    const-string v1, "mMaximum"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumField:Ljava/lang/reflect/Field;

    .line 48
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumFieldFetched:Z

    .line 50
    :cond_1
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 51
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMaximumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .line 54
    :goto_0
    return v0

    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method static getMinLines(Landroid/widget/TextView;)I
    .locals 3

    .prologue
    .line 58
    move-object v0, p0

    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeFieldFetched:Z

    if-nez v1, :cond_0

    .line 59
    const-string v1, "mMinMode"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeField:Ljava/lang/reflect/Field;

    .line 60
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeFieldFetched:Z

    .line 62
    :cond_0
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinModeField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 64
    sget-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumFieldFetched:Z

    if-nez v1, :cond_1

    .line 65
    const-string v1, "mMinimum"

    invoke-static {v1}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    sput-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumField:Ljava/lang/reflect/Field;

    .line 66
    const/4 v1, 0x1

    sput-boolean v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumFieldFetched:Z

    .line 68
    :cond_1
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumField:Ljava/lang/reflect/Field;

    if-eqz v1, :cond_2

    .line 69
    sget-object v1, Landroid/support/v4/widget/TextViewCompatDonut;->sMinimumField:Ljava/lang/reflect/Field;

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/support/v4/widget/TextViewCompatDonut;->retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I

    move-result v1

    move v0, v1

    .line 72
    :goto_0
    return v0

    :cond_2
    const/4 v1, -0x1

    move v0, v1

    goto :goto_0
.end method

.method private static retrieveField(Ljava/lang/String;)Ljava/lang/reflect/Field;
    .locals 7

    .prologue
    .line 76
    move-object v0, p0

    const/4 v3, 0x0

    move-object v1, v3

    .line 78
    :try_start_0
    const-class v3, Landroid/widget/TextView;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    move-object v1, v3

    .line 79
    move-object v3, v1

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0

    .line 83
    :goto_0
    move-object v3, v1

    move-object v0, v3

    return-object v0

    .line 80
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 81
    const-string v3, "TextViewCompatDonut"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    goto :goto_0
.end method

.method private static retrieveIntFromField(Ljava/lang/reflect/Field;Landroid/widget/TextView;)I
    .locals 7

    .prologue
    .line 88
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    :try_start_0
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 92
    :goto_0
    return v0

    .line 89
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 90
    const-string v3, "TextViewCompatDonut"

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Could not retrieve value of "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " field."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 92
    const/4 v3, -0x1

    move v0, v3

    goto :goto_0
.end method
