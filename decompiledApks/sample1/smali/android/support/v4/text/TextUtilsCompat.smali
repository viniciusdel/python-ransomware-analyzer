.class public Landroid/support/v4/text/TextUtilsCompat;
.super Ljava/lang/Object;
.source "TextUtilsCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/text/TextUtilsCompat$1;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;,
        Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;
    }
.end annotation


# static fields
.field private static ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

.field private static final IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

.field public static final ROOT:Ljava/util/Locale;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 114
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    move v0, v1

    .line 115
    move v1, v0

    const/16 v2, 0x11

    if-lt v1, v2, :cond_0

    .line 116
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatJellybeanMr1Impl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    .line 146
    :goto_0
    new-instance v1, Ljava/util/Locale;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const-string v3, ""

    const-string v4, ""

    invoke-direct {v2, v3, v4}, Ljava/util/Locale;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ROOT:Ljava/util/Locale;

    .line 148
    const-string v1, "Arab"

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    .line 149
    const-string v1, "Hebr"

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-void

    .line 118
    :cond_0
    new-instance v1, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;-><init>(Landroid/support/v4/text/TextUtilsCompat$1;)V

    sput-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 26
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 100
    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->ARAB_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/support/v4/text/TextUtilsCompat;->HEBR_SCRIPT_SUBTAG:Ljava/lang/String;

    return-object v0
.end method

.method public static getLayoutDirectionFromLocale(Ljava/util/Locale;)I
    .locals 3
    .param p0    # Ljava/util/Locale;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 143
    move-object v0, p0

    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->getLayoutDirectionFromLocale(Ljava/util/Locale;)I

    move-result v1

    move v0, v1

    return v0
.end method

.method public static htmlEncode(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p0    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    sget-object v1, Landroid/support/v4/text/TextUtilsCompat;->IMPL:Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;

    move-object v2, v0

    invoke-virtual {v1, v2}, Landroid/support/v4/text/TextUtilsCompat$TextUtilsCompatImpl;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method
