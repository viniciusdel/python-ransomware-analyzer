.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;
.super Ljava/lang/Object;
.source "qq1279525738.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000005"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 214
    move-object v0, p0

    move-object v1, p1

    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v5}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "clipboard"

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/ClipboardManager;

    move-object v3, v5

    .line 215
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/qq1279525738;->wb:Landroid/widget/TextView;

    invoke-virtual {v6}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ClipboardManager;->setText(Ljava/lang/CharSequence;)V

    .line 216
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/qq1279525738$100000005;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v5}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v5

    const-string v6, "Copy successful!"

    const/4 v7, 0x0

    invoke-static {v5, v6, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/Toast;->show()V

    return-void
.end method
