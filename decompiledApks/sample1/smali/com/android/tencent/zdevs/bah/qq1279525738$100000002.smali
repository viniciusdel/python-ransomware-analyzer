.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;
.super Landroid/os/CountDownTimer;
.source "qq1279525738.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000002"
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

    iput-object v8, v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onFinish()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 147
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->zfje:Landroid/widget/TextView;

    const-string v3, "Please scan the code to pay 40RMB and then contact the author"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 148
    move-object v2, v0

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->je:Landroid/widget/TextView;

    const-string v3, "Time has come!"

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

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
    .line 143
    move-object v0, p0

    move-wide v1, p1

    move-object v4, v0

    iget-object v4, v4, Lcom/android/tencent/zdevs/bah/qq1279525738$100000002;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v4, v4, Lcom/android/tencent/zdevs/bah/qq1279525738;->je:Landroid/widget/TextView;

    move-wide v5, v1

    invoke-static {v5, v6}, Lcom/android/tencent/zdevs/bah/sss;->formatDuring(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
