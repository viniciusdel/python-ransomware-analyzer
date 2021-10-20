.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;
.super Landroid/os/CountDownTimer;
.source "qq1279525738.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000001$100000000;
    }
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738;JJ)V
    .locals 12

    move-object v0, p0

    move-object v1, p1

    move-wide v2, p2

    move-wide/from16 v4, p4

    move-object v7, v0

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct {v7, v8, v9, v10, v11}, Landroid/os/CountDownTimer;-><init>(JJ)V

    move-object v7, v0

    move-object v8, v1

    iput-object v8, v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onFinish()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 128
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->sc:Landroid/widget/TextView;

    const-string v3, "Time has come!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 129
    move-object v2, v0

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v2}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    const-string v3, "Your file will be deleted!"

    const/4 v4, 0x1

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 130
    new-instance v2, Ljava/lang/Thread;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    new-instance v4, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001$100000000;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001$100000000;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;)V

    invoke-direct {v3, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method public onTick(J)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 124
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/android/tencent/zdevs/bah/qq1279525738$100000001;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v4, v4, Lcom/android/tencent/zdevs/bah/qq1279525738;->sc:Landroid/widget/TextView;

    move-wide v5, v1

    invoke-static {v5, v6}, Lcom/android/tencent/zdevs/bah/sss;->formatDuring(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
