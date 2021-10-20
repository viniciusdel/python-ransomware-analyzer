.class public Lcom/android/tencent/zdevs/bah/bah;
.super Landroid/support/v4/app/Fragment;
.source "bah.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/bah$100000000;,
        Lcom/android/tencent/zdevs/bah/bah$100000001;
    }
.end annotation


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private myProgress:Lcom/android/tencent/zdevs/bah/QQqun571012706;

.field view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 4

    .prologue
    .line 46
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/Fragment;-><init>()V

    move-object v2, v0

    const/4 v3, 0x0

    check-cast v3, Lcom/android/tencent/zdevs/bah/QQqun571012706;

    iput-object v3, v2, Lcom/android/tencent/zdevs/bah/bah;->myProgress:Lcom/android/tencent/zdevs/bah/QQqun571012706;

    return-void
.end method

.method static synthetic access$L1000000(Lcom/android/tencent/zdevs/bah/bah;)Lcom/android/tencent/zdevs/bah/QQqun571012706;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/bah;->myProgress:Lcom/android/tencent/zdevs/bah/QQqun571012706;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$L1000001(Lcom/android/tencent/zdevs/bah/bah;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/bah;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000000(Lcom/android/tencent/zdevs/bah/bah;Lcom/android/tencent/zdevs/bah/QQqun571012706;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/tencent/zdevs/bah/bah;->myProgress:Lcom/android/tencent/zdevs/bah/QQqun571012706;

    return-void
.end method

.method static synthetic access$S1000001(Lcom/android/tencent/zdevs/bah/bah;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/tencent/zdevs/bah/bah;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method private addListener()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    new-instance v2, Ljava/lang/Thread;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Lcom/android/tencent/zdevs/bah/bah$100000001;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/tencent/zdevs/bah/bah$100000001;-><init>(Lcom/android/tencent/zdevs/bah/bah;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 12
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 15
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    move-object v6, v1

    const v7, 0x7f030026

    move-object v8, v2

    const/4 v9, 0x0

    invoke-virtual {v6, v7, v8, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    iput-object v6, v5, Lcom/android/tencent/zdevs/bah/bah;->view:Landroid/view/View;

    .line 16
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/bah;->view:Landroid/view/View;

    const v7, 0x7f060087

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/android/tencent/zdevs/bah/QQqun571012706;

    iput-object v6, v5, Lcom/android/tencent/zdevs/bah/bah;->myProgress:Lcom/android/tencent/zdevs/bah/QQqun571012706;

    .line 17
    move-object v5, v0

    invoke-direct {v5}, Lcom/android/tencent/zdevs/bah/bah;->addListener()V

    .line 18
    move-object v5, v0

    new-instance v6, Landroid/os/Handler;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    new-instance v8, Lcom/android/tencent/zdevs/bah/bah$100000000;

    move-object v11, v8

    move-object v8, v11

    move-object v9, v11

    move-object v10, v0

    invoke-direct {v9, v10}, Lcom/android/tencent/zdevs/bah/bah$100000000;-><init>(Lcom/android/tencent/zdevs/bah/bah;)V

    invoke-direct {v7, v8}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V

    iput-object v6, v5, Lcom/android/tencent/zdevs/bah/bah;->mHandler:Landroid/os/Handler;

    .line 26
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/bah;->view:Landroid/view/View;

    move-object v0, v5

    return-object v0
.end method
