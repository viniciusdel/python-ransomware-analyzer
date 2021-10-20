.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;
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
    name = "100000006"
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

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 9
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
    .line 225
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    new-instance v4, Landroid/content/Intent;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const-string v6, "android.intent.action.VIEW"

    const-string v7, "mqqwpa://im/chat?chat_type=wpa&uin=2533816909&version=1"

    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    invoke-direct {v5, v6, v7}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Lcom/android/tencent/zdevs/bah/qq1279525738;->startActivity(Landroid/content/Intent;)V

    .line 226
    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000006;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v3}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-string v4, "Please send red envelopes and serial numbers to the authors!"

    const/4 v5, 0x1

    invoke-static {v3, v4, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    return-void
.end method
