.class Landroid/support/v4/text/ICUCompatIcs;
.super Ljava/lang/Object;
.source "ICUCompatIcs.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ICUCompatIcs"

.field private static sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

.field private static sGetScriptMethod:Ljava/lang/reflect/Method;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    .line 34
    :try_start_0
    const-string v1, "libcore.icu.ICU"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    move-object v0, v1

    .line 35
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 36
    move-object v1, v0

    const-string v2, "getScript"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 38
    move-object v1, v0

    const-string v2, "addLikelySubtags"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Class;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    const-class v6, Ljava/lang/String;

    aput-object v6, v4, v5

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    :cond_0
    :goto_0
    return-void

    .line 41
    :catch_0
    move-exception v1

    move-object v0, v1

    .line 42
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    .line 43
    const/4 v1, 0x0

    sput-object v1, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    .line 46
    const-string v1, "ICUCompatIcs"

    move-object v2, v0

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v1

    goto :goto_0
.end method

.method constructor <init>()V
    .locals 2

    .prologue
    .line 25
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;
    .locals 8

    .prologue
    .line 77
    move-object v0, p0

    move-object v3, v0

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 79
    :try_start_0
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    if-eqz v3, :cond_0

    .line 80
    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    const/4 v5, 0x0

    move-object v6, v1

    aput-object v6, v4, v5

    move-object v2, v3

    .line 81
    sget-object v3, Landroid/support/v4/text/ICUCompatIcs;->sAddLikelySubtagsMethod:Ljava/lang/reflect/Method;

    const/4 v4, 0x0

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v3

    .line 92
    :goto_0
    return-object v0

    :cond_0
    :goto_1
    move-object v3, v1

    move-object v0, v3

    goto :goto_0

    .line 83
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 85
    const-string v3, "ICUCompatIcs"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    .line 90
    goto :goto_1

    .line 87
    :catch_1
    move-exception v3

    move-object v2, v3

    .line 89
    const-string v3, "ICUCompatIcs"

    move-object v4, v2

    invoke-static {v3, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v3

    goto :goto_1
.end method

.method private static getScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 7

    .prologue
    .line 61
    move-object v0, p0

    :try_start_0
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    if-eqz v2, :cond_0

    .line 62
    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    move-object v5, v0

    aput-object v5, v3, v4

    move-object v1, v2

    .line 63
    sget-object v2, Landroid/support/v4/text/ICUCompatIcs;->sGetScriptMethod:Ljava/lang/reflect/Method;

    const/4 v3, 0x0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-object v0, v2

    .line 73
    :goto_0
    return-object v0

    :cond_0
    :goto_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0

    .line 65
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 67
    const-string v2, "ICUCompatIcs"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    .line 72
    goto :goto_1

    .line 69
    :catch_1
    move-exception v2

    move-object v1, v2

    .line 71
    const-string v2, "ICUCompatIcs"

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    move-result v2

    goto :goto_1
.end method

.method public static maximizeAndGetScript(Ljava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 51
    move-object v0, p0

    move-object v2, v0

    invoke-static {v2}, Landroid/support/v4/text/ICUCompatIcs;->addLikelySubtags(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 52
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 53
    move-object v2, v1

    invoke-static {v2}, Landroid/support/v4/text/ICUCompatIcs;->getScript(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 56
    :goto_0
    return-object v0

    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method
