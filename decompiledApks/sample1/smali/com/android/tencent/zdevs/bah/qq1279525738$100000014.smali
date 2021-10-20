.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;
.super Landroid/os/Handler;
.source "qq1279525738.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000014"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 299
    move-object v0, p0

    move-object v1, p1

    move-object v3, v1

    iget v3, v3, Landroid/os/Message;->what:I

    const v4, 0x4c44036a    # 5.138372E7f

    if-ne v3, v4, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-boolean v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738;->彼岸花:Z

    if-eqz v3, :cond_0

    .line 301
    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738;->彼岸花:Z

    .line 302
    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v3}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Decrypt complete!"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    .line 303
    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738;->bt:Landroid/widget/Button;

    const-string v4, "Decrypt complete"

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 305
    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000014;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738;->ed:Landroid/widget/EditText;

    const-string v4, ""

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method
