.class public Lcom/android/tencent/zdevs/bah/qq1279525738;
.super Landroid/support/v4/app/Fragment;
.source "qq1279525738.java"


# annotations
.annotation runtime Landroid/annotation/SuppressLint;
    value = "NewApi"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000007;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;
    }
.end annotation


# instance fields
.field ScrollView:Landroid/widget/ScrollView;

.field bt:Landroid/widget/Button;

.field bt1:Landroid/widget/TextView;

.field bt2:Landroid/widget/TextView;

.field bt3:Landroid/widget/TextView;

.field bt4:Landroid/widget/TextView;

.field ed:Landroid/widget/EditText;

.field fz:Landroid/widget/Button;

.field je:Landroid/widget/TextView;

.field jed:Landroid/widget/TextView;

.field jr:Landroid/widget/TextView;

.field lx:Landroid/widget/TextView;

.field private mHandler:Landroid/os/Handler;

.field nr1:Landroid/widget/TextView;

.field nr2:Landroid/widget/TextView;

.field nr3:Landroid/widget/TextView;

.field nr4:Landroid/widget/TextView;

.field nr5:Landroid/widget/TextView;

.field sc:Landroid/widget/TextView;

.field scd:Landroid/widget/TextView;

.field timeStart:J

.field u:J

.field view:Landroid/view/View;

.field w:J

.field wb:Landroid/widget/TextView;

.field zf:Landroid/widget/Button;

.field zfje:Landroid/widget/TextView;

.field 彼岸花:Z


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 317
    move-object v0, p0

    move-object v2, v0

    invoke-direct {v2}, Landroid/support/v4/app/Fragment;-><init>()V

    move-object v2, v0

    new-instance v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    iput-object v3, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method static synthetic access$L1000017(Lcom/android/tencent/zdevs/bah/qq1279525738;)Landroid/os/Handler;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738;->mHandler:Landroid/os/Handler;

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$S1000017(Lcom/android/tencent/zdevs/bah/qq1279525738;Landroid/os/Handler;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/android/tencent/zdevs/bah/qq1279525738;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method ewm(I)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 312
    move-object v0, p0

    move v1, p1

    new-instance v6, Landroid/widget/ImageView;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    move-object v3, v6

    .line 313
    move-object v6, v3

    move v7, v1

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 314
    new-instance v6, Landroid/app/AlertDialog$Builder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v0

    invoke-virtual {v8}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    invoke-direct {v7, v8}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v6

    move-object v4, v6

    .line 316
    move-object v6, v4

    invoke-virtual {v6}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v6

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 29
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 33
    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v19, v3

    move-object/from16 v20, v4

    const v21, 0x7f030025

    move-object/from16 v22, v5

    const/16 v23, 0x0

    invoke-virtual/range {v20 .. v23}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    .line 35
    new-instance v19, Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    invoke-direct/range {v20 .. v20}, Landroid/os/StrictMode$ThreadPolicy$Builder;-><init>()V

    invoke-virtual/range {v19 .. v19}, Landroid/os/StrictMode$ThreadPolicy$Builder;->permitAll()Landroid/os/StrictMode$ThreadPolicy$Builder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/os/StrictMode$ThreadPolicy$Builder;->build()Landroid/os/StrictMode$ThreadPolicy;

    move-result-object v19

    move-object/from16 v8, v19

    .line 36
    move-object/from16 v19, v8

    invoke-static/range {v19 .. v19}, Landroid/os/StrictMode;->setThreadPolicy(Landroid/os/StrictMode$ThreadPolicy;)V

    .line 37
    move-object/from16 v19, v3

    move-object/from16 v20, v6

    invoke-super/range {v19 .. v20}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 38
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060082

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->wb:Landroid/widget/TextView;

    .line 39
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060086

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    .line 40
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007f

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->lx:Landroid/widget/TextView;

    .line 41
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060083

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->fz:Landroid/widget/Button;

    .line 42
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060084

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/Button;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->zf:Landroid/widget/Button;

    .line 43
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060085

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/EditText;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->ed:Landroid/widget/EditText;

    .line 44
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060080

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->jr:Landroid/widget/TextView;

    .line 45
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060072

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->je:Landroid/widget/TextView;

    .line 46
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060074

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->sc:Landroid/widget/TextView;

    .line 47
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060071

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->jed:Landroid/widget/TextView;

    .line 48
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060073

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->scd:Landroid/widget/TextView;

    .line 49
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060081

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->zfje:Landroid/widget/TextView;

    .line 50
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007e

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/ScrollView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->ScrollView:Landroid/widget/ScrollView;

    .line 51
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060075

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt1:Landroid/widget/TextView;

    .line 52
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060077

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt2:Landroid/widget/TextView;

    .line 53
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060079

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt3:Landroid/widget/TextView;

    .line 54
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007b

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt4:Landroid/widget/TextView;

    .line 55
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060076

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr1:Landroid/widget/TextView;

    .line 56
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f060078

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr2:Landroid/widget/TextView;

    .line 57
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007a

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr3:Landroid/widget/TextView;

    .line 58
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007c

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr4:Landroid/widget/TextView;

    .line 59
    move-object/from16 v19, v3

    move-object/from16 v20, v3

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v20, v0

    const v21, 0x7f06007d

    invoke-virtual/range {v20 .. v21}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v20

    check-cast v20, Landroid/widget/TextView;

    move-object/from16 v0, v20

    move-object/from16 v1, v19

    iput-object v0, v1, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr5:Landroid/widget/TextView;

    .line 60
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->zfje:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1782\u17d1\u17db\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u17d4\u17d7\u1782\u17d1\u1795\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u1797\u17d7\u1782\u179a\u1796\u17e9\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1792\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u1795\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u17ae\u17d7\u1782\u17d1\u17a7\u17d7\u1782\u17d1\u1780\u17d7\u1782\u179a\u17c8\u17d7\u1782\u179a\u17db\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u17d0\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u17c8\u17d7\u1782\u179a\u1796\u17e9\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u1792\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u1797\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u17da\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u17da\u17e9\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u178a\u17d7\u1782\u17d1\u1786\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt1:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d4\u1793\u17a0\u17b1\u17d5\u17aa\u17d5\u17b4\u17d5\u17af\u1796\u1784\u17d6\u17b9\u17b4\u17a4\u17d6\u17b9\u1786\u17ac\u17d6\u17b9\u1782\u17aa\u17d6\u17a8\u1796\u17d3\u17d6\u17d4\u17a0\u17d3\u17d6\u17d5\u17b4\u17a5\u17d6\u1791\u1782\u17a8\u17d6\u17d5\u17b0\u1785\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt2:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d4\u1793\u17a0\u17b1\u17d6\u17d6\u17c8\u1781\u17d6\u17d4\u1792\u17d0\u17d6\u1791\u1782\u17a8\u17d6\u17d7\u17d1\u1797\u17d6\u17d4\u1792\u17a9\u17d6\u17b9\u1782\u17b5\u17d5\u17b9\u17ac\u17bb\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u17d4\u17a0\u17ab\u17d6\u17d6\u17d5\u1795\u17d6\u17d4\u17a0\u17ab\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt3:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d6\u17d6\u17c8\u1781\u17d6\u17d4\u1792\u17d0\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt4:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d6\u17a9\u17a0\u17a1\u17d6\u17d4\u1792\u17d0\u17d6\u1793\u17c8\u17d2\u17d5\u1782\u17d1\u1782\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 65
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr1:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1792\u179a\u17ae\u17d6\u17d7\u17d1\u1797\u17d6\u17d4\u1792\u17a9\u17d6\u17b9\u1782\u17b5\u17d5\u17b9\u17ac\u17bb\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d5\u1782\u17c8\u1799\u17d6\u17b9\u17b0\u17a7\u17d6\u17b9\u17b4\u17b1\u17d6\u17b9\u1782\u17aa\u17d6\u17d4\u17a4\u1791\u17d6\u1792\u17b0\u17d6\u17d6\u17aa\u178a\u178d\u17d5\u1782\u179a\u17b3\u17d6\u178c\u17a8\u17b9\u17d6\u17a9\u179a\u17cc\u17d4\u1793\u17a0\u17a0\u17d6\u17a8\u1782\u1795\u17e9\u17d6\u17d4\u17a0\u17a7\u17d6\u17aa\u17ac\u17aa\u17d5\u17ba\u1796\u1797\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17d6\u17d4\u17a0\u17ab\u17d6\u17d6\u17d5\u1795\u17d4\u1793\u17a0\u17a0\u17d5\u17ba\u17ac\u17b3\u17d6\u17b9\u17ac\u17b7\u17d6\u17d4\u178e\u1790\u17d6\u17d5\u17b0\u1785\u17d4\u1793\u17a0\u17a0\u17d6\u17d6\u17c8\u1781\u17d6\u17d4\u1792\u17d0\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17e9\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u17d5\u17b4\u1794\u17d6\u17d5\u17b4\u1794\u17d6\u17b9\u17b0\u17a6\u17d6\u1793\u17a4\u1785\u17d6\u17af\u17a0\u178e\u17d6\u17a8\u17ac\u178b\u17d6\u17aa\u178a\u1793\u17d6\u17d5\u17d5\u178e\u17d7\u1792\u179a\u17ae\u17d6\u17a8\u17b0\u178f\u17d6\u17a8\u17a0\u17d3\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u17b0\u17a6\u17d5\u17b9\u178a\u178e\u17d6\u17d4\u17a0\u178a\u17d6\u17d4\u17a0\u17ab\u17d6\u17af\u17a4\u17a1\u17e9\u17d6\u17d5\u17a4\u17b1\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17d5\u1782\u17b0\u178a\u17d6\u17b9\u17b0\u17ac\u17d6\u17af\u17d5\u17a0\u17d5\u17b9\u17ac\u17bb\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17a9\u17a0\u17ac\u17d6\u17d5\u17b4\u1787\u17d6\u17a9\u17b0\u17d1\u17d6\u17d7\u17a4\u1797\u17d5\u1782\u17c8\u1799\u17d6\u17b9\u17b0\u17a7\u17d6\u17d7\u17a4\u1792\u17d6\u17af\u1786\u1796\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u1782\u17aa\u17e9\u17d6\u17aa\u17ac\u17aa\u17d6\u17a8\u1782\u1796\u17d5\u17ba\u17d5\u178f\u17d5\u17a8\u17c8\u1799\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17d6\u1791\u1782\u17a8\u17d6\u17af\u17a8\u17a5\u17d6\u1793\u17d1\u17d2\u17d6\u17d4\u17a0\u17ab\u17d6\u17d5\u17b4\u17ac\u17d6\u17b9\u17b4\u17a2\u17d6\u17a8\u1796\u1796\u17d4\u1793\u17a0\u17a0\u17d6\u178c\u17a4\u17ab\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u17d1\u17e9\u17d7\u1782\u17d1\u17d5\u17d7\u1792\u179a\u17b3\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17d5\u17aa\u17d5\u1785\u17d5\u17ba\u1796\u17aa\u17d7\u1792\u179a\u17b3\u17d5\u17aa\u17d5\u1785\u17d5\u17af\u17ac\u17da\u17d7\u1792\u179a\u17b3\u17d6\u17a8\u17a0\u17af\u17d6\u1793\u17a0\u178d\u17d6\u17a8\u17a8\u17a5\u17d7\u1792\u179a\u17b3\u17d6\u17d7\u17d1\u1797\u17d6\u17d4\u1792\u17a9\u17d7\u1792\u179a\u17b3\u17d6\u1792\u17b4\u17a9\u17d6\u17af\u1786\u1794\u17e9\u17d7\u1792\u179a\u17b3\u17d6\u1792\u17b4\u17a9\u17d6\u1792\u178e\u1793\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17b9\u1782\u17aa\u17d6\u17aa\u17a4\u17b4\u17d6\u17b9\u17ac\u17b7\u17d6\u17aa\u17ac\u17aa\u17d6\u17a8\u1782\u1796\u17d6\u17d5\u17b0\u1785\u17d5\u17ba\u17d5\u178f\u17d6\u17b9\u1786\u17d7\u17d6\u17d4\u1792\u17a9\u17d5\u17ba\u1792\u17b3\u17d5\u17a8\u1796\u17a7\u17d6\u17b9\u1782\u17b5\u17d6\u17b9\u17b0\u17ac\u17d6\u1791\u1782\u17a8\u17e9\u17d6\u17d5\u17d5\u178e\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 66
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr2:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1792\u179a\u17ae\u17d6\u17b9\u1782\u17aa\u17d6\u17d7\u179a\u17d6\u17d6\u17b9\u17b4\u17a4\u17d6\u17d5\u179a\u17a2\u17d6\u17d6\u179a\u1782\u17d5\u17b9\u17ac\u1786\u17d6\u1791\u1782\u17a8\u17d6\u17d5\u17d5\u178e\u17d6\u1791\u17a0\u17a5\u17d5\u17ba\u1792\u17b3\u17d6\u17a9\u179a\u17cc\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u17a4\u1796\u17d6\u17a8\u17b0\u17c8\u17d5\u17b9\u17a4\u1784\u17d6\u17af\u179a\u178c\u17d5\u1782\u17c8\u1799\u17d4\u1793\u17a0\u17a0\u17e9\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d5\u17b9\u178a\u17d0\u17d6\u17a8\u178e\u17a7\u17d6\u17a8\u1782\u178e\u17d6\u17d6\u178a\u17d2\u17d6\u17d4\u17a0\u17ab\u17d6\u17b9\u17a0\u17b6\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u1782\u17d3\u17d6\u178c\u17b4\u17d6\u17d6\u1791\u1782\u17a8\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d5\u17af\u17d5\u17cc\u17d6\u17d6\u17d5\u1795\u17d6\u17b9\u17b0\u17a6\u17d6\u17b9\u1786\u1791\u17d6\u17a9\u17b4\u17d5\u17e9\u17d6\u17a8\u17a4\u17a6\u17d6\u17aa\u17ac\u17d0\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u17a4\u1796\u17d5\u17ba\u17ac\u17ab\u17d6\u17af\u17d1\u17a6\u17d6\u17b9\u1782\u17aa\u17d6\u17a9\u17ac\u17b4\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u1782\u17aa\u17d6\u17aa\u17ac\u17d0\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17b9\u1782\u17aa\u17d6\u17b9\u17b0\u17a7\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d5\u17b9\u17ac\u17b0\u17d6\u17d6\u179a\u17d1\u17e9\u17d6\u17b9\u17a0\u17b6\u17d6\u17a9\u179a\u17aa\u17d4\u1793\u17a0\u17a0\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u17a0\u1788\u17d6\u17a8\u1792\u17af\u17d6\u17b9\u17b4\u17a5\u17d6\u17d5\u1786\u17b0\u17d6\u178c\u178a\u179a\u17d6\u17b9\u17b0\u1788\u17d6\u17b9\u17b0\u17ac\u17d4\u1793\u17a0\u17a0\u17d6\u17d4\u17a0\u17ab\u17d5\u17b9\u17ac\u17b4\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17a8\u179a\u17a7\u17d6\u1793\u17ac\u17d2\u17e9\u17d6\u17b9\u17a0\u17b6\u17d6\u17a9\u179a\u17cc\u17d6\u1791\u178a\u178e\u17d5\u17b9\u178a\u17d0\u17d6\u17aa\u178a\u178d\u17d6\u17b9\u17b0\u17ab\u17d6\u17b9\u1782\u17aa\u17d5\u17b9\u17ac\u17a9\u17d4\u1793\u17a0\u17a0\u17d6\u1791\u178a\u178e\u17d5\u17b9\u178a\u17d0\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d6\u17a8\u1792\u17af\u17d6\u17b9\u17b4\u17a5\u17d6\u17aa\u178a\u178d\u17d7\u1782\u179a\u17da\u17d6\u17aa\u178e\u1799\u17d6\u17d4\u17a0\u17ac\u17e9\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17a8\u17b0\u178d\u17d6\u17b9\u17b0\u17a7\u17d6\u17b9\u17a4\u1796\u17d6\u17aa\u17ac\u17d0\u17d5\u17af\u178e\u179b\u17d5\u17b9\u1792\u17a6\u17d5\u17af\u1796\u17d5\u17d6\u17d4\u1796\u17d7\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d5\u17b9\u17ac\u17b1\u17d6\u17d5\u17a8\u178e\u17d4\u1793\u17a0\u17a0\u17d6\u17d4\u17b0\u178b\u17d6\u17b9\u17b0\u17a7\u17d6\u1792\u178a\u17d7\u17d6\u17a9\u17a4\u1787\u17e9\u17d4\u1793\u17a0\u17a0\u17d6\u17af\u179a\u17b9\u17d6\u1791\u1782\u17a8\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u17b9\u17a0\u17b6\u17d6\u17a9\u179a\u17cc\u17d4\u1793\u17a0\u17a0\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d5\u17aa\u17d5\u17b7\u17d5\u17a8\u1796\u1785\u17d6\u17aa\u17a8\u17b6\u17d6\u17af\u1786\u17d3\u17d6\u17b9\u1786\u1791\u17d6\u17a8\u17ac\u178b\u17d5\u17a8\u17c8\u1799\u17d6\u17d4\u1796\u17d7\u17d5\u17af\u1782\u17a1\u17e9\u17d6\u17af\u179a\u178c\u17d6\u17d4\u17b0\u178b\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u17a4\u1796\u17d5\u17aa\u1782\u17b9\u17d6\u17b9\u17a0\u17b6\u17d6\u17b9\u17b0\u17a7\u17d6\u1793\u1786\u17b7\u17d6\u17d4\u17b0\u178b\u17d6\u17d5\u17b0\u1785\u17d4\u1793\u17a0\u17a0\u17d6\u17a9\u17ac\u17ad\u17d6\u17d4\u178a\u1794\u17d6\u17d5\u17d5\u178e\u17d5\u17ba\u17ac\u17d6\u17d7\u1792\u179a\u17ae\u17d5\u17b9\u17ac\u17b1\u17e9\u17d6\u17d5\u17a8\u178e\u17d6\u1791\u1782\u17a8\u17d6\u17d4\u17a0\u17b1\u17d5\u17af\u17b4\u1786\u17d6\u17d4\u1796\u1796\u17d5\u1782\u17c8\u1799\u17d6\u17b9\u17b0\u17a7\u17d6\u17b9\u17b4\u17b1\u17d4\u1793\u17a0\u17a0\u17d6\u1791\u1782\u17a8\u17d5\u17b9\u178a\u17d0\u17d6\u17d4\u178a\u17d7\u17d6\u17d4\u17b0\u178b\u17d5\u17b9\u17ac\u17bb\u17d6\u17b9\u17a4\u17aa\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d6\u17a8\u1782\u1795\u17d6\u17d4\u17a0\u17a7\u17e9\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u1791\u1782\u17a8\u17d6\u17d4\u178e\u17a4\u17d6\u17d4\u17a0\u17ab\u17d6\u17a8\u178e\u178e\u17d6\u17aa\u17a8\u17ab\u17d6\u17b9\u17a8\u17b5\u17d6\u17d5\u17ac\u1786\u17d6\u17aa\u178a\u17b1\u17d5\u1782\u17c8\u1799\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u17ac\u17b7\u17d6\u17d5\u1786\u17af\u17d6\u17d7\u179a\u179a\u17d6\u17b9\u1782\u17d3\u17d6\u17b9\u1786\u1791\u17d6\u17d5\u17b0\u1785\u17d7\u1792\u179a\u17ae\u17e9\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d5\u1782\u17c8\u1799\u17d6\u17d5\u17b4\u17a7\u17d6\u17a8\u1782\u1795\u17d6\u17d4\u17a0\u17a7\u17d6\u17aa\u17ac\u17aa\u17d5\u17ba\u1796\u1797\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17d5\u17b9\u17ac\u17a9\u17d5\u17a8\u179a\u17b6\u17d5\u1782\u17c8\u1799\u17d6\u17a8\u17ac\u1788\u17d7\u1792\u179a\u17ae\u17d6\u17d6\u17c8\u1781\u17d6\u17d4\u1792\u17d0\u17d6\u1791\u1782\u17a8\u17e9\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u17a8\u17ac\u178b\u17d6\u17d4\u17a0\u17ab\u17d6\u1792\u178a\u17d7\u17d6\u17a9\u17a4\u1787\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr3:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1792\u179a\u17ae\u17d6\u17b9\u17a4\u17b0\u17d6\u17a9\u1796\u1791\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d6\u17aa\u1796\u17a5\u17d6\u17a9\u17a0\u17ac\u17d6\u17a8\u17a4\u17da\u17d6\u178c\u1786\u17a5\u17d6\u17a8\u17ac\u178b\u17d4\u1793\u17a0\u17a0\u17d5\u17af\u17d5\u1784\u17d6\u17d5\u17a0\u17ab\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u17c8\u17d7\u1782\u17d1\u17d0\u17d7\u1782\u17d1\u17db\u17d7\u1782\u17d1\u1797\u17e9\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u17a8\u17d7\u1792\u179a\u17a4\u17d6\u17a8\u1796\u17d2\u17d6\u1792\u17d5\u17d0\u17d6\u17a8\u1792\u17a7\u17d4\u1793\u17a0\u17a0\u17d5\u17af\u17d5\u1791\u17d6\u17aa\u17ac\u17aa\u17d6\u17a8\u178e\u1791\u17d5\u17b9\u17a8\u1787\u17d5\u17a8\u1796\u17a0\u17d6\u17d7\u17d1\u17aa\u17d6\u17a8\u178e\u1791\u17d5\u17b9\u17a8\u1787\u17d6\u1791\u1782\u17a8\u17d5\u17a8\u17c8\u178e\u17d6\u17a9\u1782\u1781\u17d6\u17af\u17a0\u178e\u17e9\u17d4\u1793\u17a0\u17a0\u17d6\u17af\u179a\u17a2\u17d5\u17af\u17d5\u1784\u17d6\u17d5\u17a0\u17ab\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u17c8\u17d7\u1782\u17d1\u17d0\u17d7\u1782\u17d1\u17db\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u17a8\u17d7\u1792\u179a\u17a4\u17d6\u1792\u17a8\u17c8\u17d6\u17a8\u1796\u17d3\u17d5\u17a8\u17c8\u178e\u17d6\u17a9\u1782\u1781\u17d6\u17a9\u17a8\u17af\u17d6\u178c\u17a4\u17ab\u17e9\u17d4\u1793\u17a0\u17a0\u17d5\u17af\u17d5\u1791\u17d6\u17aa\u17ac\u17aa\u17d6\u17b9\u17b0\u17db\u17d6\u17b9\u17b0\u17ac\u17d6\u17b9\u17a4\u1796\u17d6\u1793\u1786\u17bb\u17d6\u17b9\u17a0\u17b6\u17d5\u1782\u179a\u17af\u17d6\u17b9\u17a4\u17b0\u17d4\u1793\u17a0\u17a0\u17d6\u17af\u179a\u17a2\u17d6\u17a8\u1782\u17b1\u17d6\u17d5\u17b0\u1786\u17d5\u17b9\u178a\u178c\u17d6\u17a8\u17b0\u17c8\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d5\u1782\u179a\u17af\u17e9\u17d6\u17b9\u17a4\u17b0\u17d6\u1793\u1786\u17bb\u17d5\u17a8\u179a\u17b3\u17d6\u17a8\u17ac\u1785\u17d6\u17af\u1786\u1794\u17d6\u17d5\u17b0\u1788\u17d6\u17a8\u17a4\u1781\u17d5\u17b9\u178a\u178c\u17d6\u17a8\u1782\u17b1\u17d6\u17d5\u17b0\u1786\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d6\u17af\u17d5\u17a0\u17d6\u17a8\u17ac\u17d6\u17d6\u17a8\u17b0\u17b9\u17d6\u17a9\u1782\u17a1\u17d6\u17d5\u1782\u17a6\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17da\u17e9\u17d7\u1782\u17d1\u1781\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u17ad\u17d7\u1792\u179a\u17a4\u17d6\u17a8\u1796\u17d2\u17d6\u1792\u17d5\u17d0\u17d6\u17a8\u1792\u17a7\u17d6\u17af\u179a\u17a2\u17d6\u17a8\u17ac\u17d6\u17d6\u17a8\u17b0\u17b9\u17d6\u17a9\u1782\u17a1\u17d6\u17aa\u178e\u1799\u17d6\u17a8\u17b0\u17d7\u17e9\u17d6\u17aa\u178a\u17a7\u17d5\u17af\u17d5\u1784\u17d6\u17d5\u17a0\u17ab\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17d0\u17d7\u1782\u17d1\u17c8\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u17ad\u17d7\u1792\u179a\u17a4\u17d6\u17a8\u1796\u17d2\u17d6\u1792\u17d5\u17d0\u17d5\u17ba\u17ac\u17d6\u17d6\u17af\u179a\u17a2\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d7\u1782\u179a\u17a6\u17d7\u1792\u179a\u17ae\u17d5\u17aa\u17d5\u17b7\u17d5\u17a8\u1796\u1785\u17e9\u17d6\u1791\u1782\u17a8\u17d6\u178c\u178a\u17d3\u17d6\u17d4\u17b0\u1794\u17d6\u17b9\u17b0\u17a6\u17d6\u17a8\u17ac\u1797\u17d6\u178c\u1782\u17b9\u17d6\u17af\u17a0\u178e\u17d6\u17b9\u1782\u17a2\u17d6\u17b9\u17a4\u17a2\u17d5\u1782\u17c8\u1799\u17d6\u17b9\u17b0\u17a7\u17d5\u17aa\u17d5\u17b7\u17d5\u17a8\u1796\u1785\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d4\u1793\u17a0\u17b6\u17d6\u17d5\u178a\u17a1\u17d6\u17d6\u17c8\u178e\u17d5\u17ba\u1792\u17b3\u17e9\u17d7\u1782\u179a\u17a6\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d6\u17aa\u17a8\u17b7\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d7\u1792\u179a\u17b3\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d6\u17b9\u17ac\u1795\u17d6\u17a9\u17a8\u1784\u17d7\u1792\u179a\u17b3\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d7\u1782\u17d1\u1785\u17d7\u1782\u17d1\u1785\u17d6\u17d4\u17a0\u17ab\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17e9\u17d7\u1782\u179a\u17a6\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d6\u178c\u179a\u17b3\u17d6\u17d5\u17b4\u178f\u17d6\u17af\u1786\u1794\u17d6\u17d5\u17b0\u1788\u17d6\u17af\u179a\u17a2\u17d6\u1792\u178a\u17d7\u17d5\u17af\u17d5\u1784\u17d6\u17d5\u17a0\u17ab\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u1789\u17d7\u1782\u17d1\u17d0\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u1786\u17e9\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u178f\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u1791\u17d7\u1782\u17d1\u178e\u17d7\u1782\u17d1\u17ad\u17d7\u1792\u179a\u17a4\u17d6\u17a8\u1796\u17d2\u17d6\u1792\u17d5\u17d0\u17d5\u17ba\u17ac\u17d6\u17d7\u1782\u179a\u17a6\u17d6\u17b9\u1786\u17b4\u17d6\u17d4\u178a\u178b\u17d6\u178c\u179a\u17b3\u17d6\u1793\u1786\u17d5\u17d6\u17b9\u1782\u17a0\u17d6\u17d5\u17b4\u178f\u17d6\u17d5\u17a0\u17b3\u17d6\u17d4\u178a\u178b\u17e9\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 68
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr4:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1792\u179a\u17ae\u17d6\u17af\u179a\u1793\u17d6\u17d5\u17d1\u178b\u17d6\u17d6\u1792\u17a4\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17d6\u1793\u1786\u17bb\u17d6\u17a8\u17ac\u1785\u17d4\u1793\u17a0\u17a0\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17da\u17d7\u1782\u17d1\u1781\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u178d\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u17a6\u17d7\u1792\u179a\u17a4\u17d5\u1782\u179a\u17af\u17e9\u17d6\u17d5\u17b0\u17ba\u17d7\u1792\u179a\u17ab\u17d7\u1782\u17d1\u17da\u17d7\u1782\u17d1\u1781\u17d7\u1782\u179a\u1796\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1797\u17d7\u1782\u17d1\u1795\u17d7\u1782\u17d1\u17d5\u17d7\u1782\u17d1\u1784\u17d7\u1782\u17d1\u178b\u17d7\u1782\u17d1\u17ad\u17d7\u1792\u179a\u17a4\u17d6\u17a8\u1796\u17d2\u17d6\u1792\u17d5\u17d0\u17d5\u17ba\u17ac\u17d6\u17d4\u1793\u17a0\u17a0\u17d6\u17a8\u1782\u178d\u17d6\u17a9\u17b0\u1784\u17e9\u17d6\u1791\u1782\u17a8\u17d6\u17b9\u1786\u178a\u17d6\u17d5\u17b0\u1785\u17d5\u17ba\u1792\u17b3\u17d5\u17af\u17a0\u17ac\u17d6\u17d4\u17a8\u17b0\u17d6\u17aa\u1792\u17ae\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 69
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->nr5:Landroid/widget/TextView;

    move-object/from16 v19, v0

    const-string v20, "\u17d7\u1792\u179a\u17ae\u17d6\u17a8\u1792\u17d4\u17d6\u17d5\u17c8\u17af\u17d6\u1791\u1782\u17a8\u17d6\u17d5\u17d1\u178b\u17d6\u17b9\u17ac\u1795\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d5\u1782\u17c8\u1799\u17d6\u17b9\u17b0\u17a7\u17d6\u17b9\u17b4\u17b1\u17d6\u17af\u179a\u17a2\u17d6\u17d7\u17a0\u1794\u17d6\u17b9\u1786\u17b4\u17d5\u1782\u1796\u17d5\u17d6\u17aa\u17ac\u179a\u17d6\u17b9\u17a0\u17b6\u17d5\u1782\u17c8\u1799\u17d6\u17a8\u17ac\u178b\u17e9\u17d6\u17a9\u17a8\u17a4\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u1782\u17aa\u17d5\u17af\u17b4\u1792\u17d6\u17a8\u17b0\u1796\u17d5\u17ba\u17d5\u178f\u17d6\u17b9\u1786\u17d7\u17d5\u17b9\u17a4\u178b\u17d5\u17ba\u17ac\u1791\u17d6\u17b9\u17b0\u17ac\u17d6\u17b9\u17b0\u17a9\u17d4\u1793\u17a0\u17a0\u17d6\u17af\u1786\u1796\u17d6\u17a8\u17a8\u17b1\u17d6\u17b9\u17b4\u17a4\u17d6\u17b9\u1786\u17ac\u17d6\u17b9\u1782\u17a2\u17d6\u1791\u178a\u17cc\u17d6\u178c\u17a8\u1795\u17e9\u17d6\u17b9\u17b0\u17a7\u17d7\u1792\u179a\u17ae\u17d6\u17b9\u1786\u17d7\u17d5\u17b9\u17a4\u178b\u17d6\u17d7\u17ac\u1780\u17d6\u17d4\u17a4\u17ac\u17d6\u17a8\u17d1\u17b0\u17d6\u17d4\u1782\u17ae\u17d6\u17b9\u17b0\u1782\u17d6\u17a9\u17b4\u17d7\u17d4\u1793\u17a0\u17a0\u17d6\u17b9\u1786\u17d7\u17d5\u17b9\u17a4\u178b\u17d5\u17ba\u17ac\u1791\u17d5\u17af\u17b4\u1792\u17d6\u17a8\u17b0\u1796\u17d5\u1782\u179a\u17af\u17d6\u17d5\u17b0\u17ba\u17d5\u17af\u1796\u1789\u17e9\u17d6\u17a8\u178e\u17da\u17d5\u17ba\u1792\u17b3\u17d6\u17b9\u17b0\u17a7\u17d5\u17ba\u17ac\u17d6\u17d4\u1793\u17a0\u17a0\u17d6\u17a8\u17b4\u17a7\u17d6\u17b9\u17b4\u17a5\u17d6\u17d4\u17a4\u17b1\u17d6\u1793\u1786\u1787\u17d6\u17b9\u17a4\u17b0\u17d6\u17a9\u1796\u1791\u17d6\u17aa\u178a\u17a7\u17d6\u17d5\u17d1\u1790\u17d4\u1793\u17a0\u17a0\u17d6\u1792\u17c8\u178c\u17d5\u17a9\u1782\u17d2\u17d6\u1791\u1782\u17a8\u17d5\u17ba\u1792\u17b3\u17d6\u17a9\u17ac\u17af\u17e9\u17d6\u17b9\u17b0\u17a7\u17d6\u17a8\u178e\u17a7\u17d5\u17a8\u17d1\u179b\u17d6\u17b9\u1782\u17aa\u17d6\u17b9\u17b0\u17d3\u17d4\u1793\u17a0\u17a0\u17d5\u17ba\u17a8\u1784\u17d6\u17a9\u1786\u17d3\u17d6\u1792\u17c8\u17a4\u17d6\u17a9\u17a0\u17d3\u17d6\u17d5\u17b0\u1785\u17e9"

    invoke-static/range {v20 .. v20}, Lcom/android/tencent/zdevs/bah/sss;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/support/v4/app/FragmentActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v19

    const-string v20, "ssspbahk.so"

    invoke-static/range {v19 .. v20}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v19

    move-object/from16 v9, v19

    .line 71
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->sc:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 72
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->je:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v20, v9

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 73
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-string v20, "XH"

    move-object/from16 v21, v3

    invoke-virtual/range {v21 .. v21}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v21

    sget v21, Landroid/content/Context;->MODE_PRIVATE:I

    invoke-virtual/range {v19 .. v21}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v19

    move-object/from16 v10, v19

    .line 74
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->wb:Landroid/widget/TextView;

    move-object/from16 v19, v0

    move-object/from16 v20, v10

    const-string v21, "bah"

    const-string v22, ""

    invoke-interface/range {v20 .. v22}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 75
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->lx:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setFlags(I)V

    .line 76
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->jr:Landroid/widget/TextView;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v19

    const/16 v20, 0x8

    invoke-virtual/range {v19 .. v20}, Landroid/text/TextPaint;->setFlags(I)V

    .line 78
    move-object/from16 v19, v10

    const-string v20, "sss"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 79
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    move-object/from16 v19, v0

    const-string v20, "Decrypt"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 80
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setEnabled(Z)V

    .line 81
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->ed:Landroid/widget/EditText;

    move-object/from16 v19, v0

    const/16 v20, 0x1

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setFocusableInTouchMode(Z)V

    .line 84
    :cond_0
    move-object/from16 v19, v10

    const-string v20, "cjk"

    const/16 v21, 0x0

    invoke-interface/range {v19 .. v21}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v19

    const/16 v20, 0x1

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_1

    .line 85
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    move-object/from16 v19, v0

    const-string v20, "Decrypt complete"

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 86
    move-object/from16 v19, v3

    invoke-virtual/range {v19 .. v19}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v19

    const-string v20, "Decrypt complete!"

    const/16 v21, 0x1

    invoke-static/range {v19 .. v21}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/widget/Toast;->show()V

    .line 92
    :cond_1
    :try_start_0
    new-instance v19, Ljava/net/URL;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string v21, "http://biaozhunshijian.51240.com/"

    invoke-direct/range {v20 .. v21}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    move-object/from16 v11, v19

    .line 93
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v19

    move-object/from16 v12, v19

    .line 94
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->connect()V

    .line 95
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Ljava/net/URLConnection;->getDate()J

    move-result-wide v19

    move-wide/from16 v13, v19

    .line 96
    new-instance v19, Ljava/util/Date;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-wide/from16 v21, v13

    invoke-direct/range {v20 .. v22}, Ljava/util/Date;-><init>(J)V

    move-object/from16 v15, v19

    .line 97
    new-instance v19, Ljava/text/SimpleDateFormat;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    const-string v21, "yyyy-MM-dd HH:mm:ss SSS"

    invoke-direct/range {v20 .. v21}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v16, v19

    .line 98
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v19

    move-object/from16 v17, v19

    .line 99
    move-object/from16 v19, v17

    move-object/from16 v20, v16

    move-object/from16 v21, v16

    move-object/from16 v22, v15

    invoke-virtual/range {v21 .. v22}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v21

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V

    .line 100
    move-object/from16 v19, v3

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_1

    .line 106
    :goto_0
    move-object/from16 v19, v10

    :try_start_1
    const-string v20, "sj"

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-interface/range {v19 .. v22}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    move-object/from16 v19, v10

    const-string v20, "sj1"

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    invoke-interface/range {v19 .. v22}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v19

    const/16 v21, 0x0

    move/from16 v0, v21

    int-to-long v0, v0

    move-wide/from16 v21, v0

    cmp-long v19, v19, v21

    if-eqz v19, :cond_2

    .line 107
    move-object/from16 v19, v3

    move-object/from16 v20, v10

    const-string v21, "sj"

    const/16 v22, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-interface/range {v20 .. v23}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->u:J

    .line 108
    move-object/from16 v19, v3

    move-object/from16 v20, v10

    const-string v21, "sj1"

    const/16 v22, 0x0

    move/from16 v0, v22

    int-to-long v0, v0

    move-wide/from16 v22, v0

    invoke-interface/range {v20 .. v23}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v20

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J

    move-wide/from16 v22, v0

    sub-long v20, v20, v22

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->w:J

    .line 118
    :goto_1
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->jed:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "MM/dd/yyyy HH:mm:ss"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v10

    const-string v22, "sj1"

    const/16 v23, 0x0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    new-instance v23, Ljava/lang/Long;

    move-wide/from16 v26, v21

    move-object/from16 v28, v23

    move-object/from16 v21, v28

    move-wide/from16 v22, v26

    move-object/from16 v24, v28

    move-wide/from16 v26, v22

    move-object/from16 v28, v24

    move-object/from16 v22, v28

    move-wide/from16 v23, v26

    move-object/from16 v25, v28

    invoke-direct/range {v22 .. v24}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 119
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->scd:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Ljava/text/SimpleDateFormat;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    const-string v22, "MM/dd/yyyy HH:mm:ss"

    invoke-direct/range {v21 .. v22}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v21, v10

    const-string v22, "sj"

    const/16 v23, 0x0

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    invoke-interface/range {v21 .. v24}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v21

    new-instance v23, Ljava/lang/Long;

    move-wide/from16 v26, v21

    move-object/from16 v28, v23

    move-object/from16 v21, v28

    move-wide/from16 v22, v26

    move-object/from16 v24, v28

    move-wide/from16 v26, v22

    move-object/from16 v28, v24

    move-object/from16 v22, v28

    move-wide/from16 v23, v26

    move-object/from16 v25, v28

    invoke-direct/range {v22 .. v24}, Ljava/lang/Long;-><init>(J)V

    invoke-virtual/range {v20 .. v21}, Ljava/text/SimpleDateFormat;->format(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    new-instance v19, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->u:J

    move-wide/from16 v22, v0

    const/16 v24, 0x3e8

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-direct/range {v20 .. v25}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;JJ)V

    move-object/from16 v11, v19

    .line 138
    move-object/from16 v19, v11

    invoke-virtual/range {v19 .. v19}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;

    move-result-object v19

    .line 140
    new-instance v19, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v3

    move-object/from16 v22, v3

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->w:J

    move-wide/from16 v22, v0

    const/16 v24, 0x3e8

    move/from16 v0, v24

    int-to-long v0, v0

    move-wide/from16 v24, v0

    invoke-direct/range {v20 .. v25}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;JJ)V

    move-object/from16 v12, v19

    .line 151
    move-object/from16 v19, v12

    invoke-virtual/range {v19 .. v19}, Landroid/os/CountDownTimer;->start()Landroid/os/CountDownTimer;
    :try_end_1
    .catch Ljava/text/ParseException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v19

    .line 159
    :goto_2
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 209
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->fz:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->lx:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 231
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->jr:Landroid/widget/TextView;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000007;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000007;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 241
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->zf:Landroid/widget/Button;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 271
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->ed:Landroid/widget/EditText;

    move-object/from16 v19, v0

    new-instance v20, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;

    move-object/from16 v26, v20

    move-object/from16 v20, v26

    move-object/from16 v21, v26

    move-object/from16 v22, v3

    invoke-direct/range {v21 .. v22}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V

    invoke-virtual/range {v19 .. v20}, Landroid/widget/EditText;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 290
    move-object/from16 v19, v3

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->view:Landroid/view/View;

    move-object/from16 v19, v0

    move-object/from16 v3, v19

    return-object v3

    .line 100
    :catch_0
    move-exception v19

    move-object/from16 v11, v19

    .line 104
    move-object/from16 v19, v3

    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J

    goto/16 :goto_0

    .line 111
    :cond_2
    move-object/from16 v19, v10

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    move-object/from16 v11, v19

    .line 112
    move-object/from16 v19, v11

    const-string v20, "sj"

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J

    move-wide/from16 v21, v0

    const v23, 0x240c87e8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-interface/range {v19 .. v22}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 113
    move-object/from16 v19, v11

    const-string v20, "sj1"

    move-object/from16 v21, v3

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/android/tencent/zdevs/bah/qq1279525738;->timeStart:J

    move-wide/from16 v21, v0

    const v23, 0xf7317e8

    move/from16 v0, v23

    int-to-long v0, v0

    move-wide/from16 v23, v0

    add-long v21, v21, v23

    invoke-interface/range {v19 .. v22}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v19

    .line 114
    move-object/from16 v19, v11

    invoke-interface/range {v19 .. v19}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v19

    .line 115
    move-object/from16 v19, v3

    const v20, 0x240c87e8

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->u:J

    .line 116
    move-object/from16 v19, v3

    const v20, 0xf7317e8

    move/from16 v0, v20

    int-to-long v0, v0

    move-wide/from16 v20, v0

    move-wide/from16 v0, v20

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->w:J
    :try_end_2
    .catch Ljava/text/ParseException; {:try_start_2 .. :try_end_2} :catch_1

    goto/16 :goto_1

    .line 151
    :catch_1
    move-exception v19

    move-object/from16 v11, v19

    goto/16 :goto_2
.end method
