.class Landroid/support/design/widget/SnackbarManager$SnackbarRecord;
.super Ljava/lang/Object;
.source "SnackbarManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/support/design/widget/SnackbarManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SnackbarRecord"
.end annotation


# instance fields
.field private final callback:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/support/design/widget/SnackbarManager$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private duration:I


# direct methods
.method constructor <init>(ILandroid/support/design/widget/SnackbarManager$Callback;)V
    .locals 8

    .prologue
    .line 172
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 173
    move-object v3, v0

    new-instance v4, Ljava/lang/ref/WeakReference;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v2

    invoke-direct {v5, v6}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    .line 174
    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    .line 175
    return-void
.end method

.method static synthetic access$100(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)I
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    move v0, v1

    return v0
.end method

.method static synthetic access$102(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;I)I
    .locals 7

    .prologue
    .line 168
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->duration:I

    move v0, v2

    return v0
.end method

.method static synthetic access$200(Landroid/support/design/widget/SnackbarManager$SnackbarRecord;)Ljava/lang/ref/WeakReference;
    .locals 2

    .prologue
    .line 168
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    move-object v0, v1

    return-object v0
.end method


# virtual methods
.method isSnackbar(Landroid/support/design/widget/SnackbarManager$Callback;)Z
    .locals 4

    .prologue
    .line 178
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/design/widget/SnackbarManager$SnackbarRecord;->callback:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v1

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    return v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
