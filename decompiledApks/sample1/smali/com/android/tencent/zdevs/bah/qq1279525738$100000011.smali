.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;
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
    name = "100000011"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000008;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000009;,
        Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;
    }
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

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)Lcom/android/tencent/zdevs/bah/qq1279525738;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 11
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
    .line 246
    move-object v0, p0

    move-object v1, p1

    new-instance v5, Landroid/app/AlertDialog$Builder;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738;

    invoke-virtual {v7}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v6, "Payment"

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Please choose a payment method! "

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "QQ"

    new-instance v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000008;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000008;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "Alipay"

    new-instance v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000009;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000009;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const-string v6, "WeChat"

    new-instance v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000011$100000010;-><init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000011;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNeutralButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    move-object v3, v5

    .line 267
    move-object v5, v3

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    move-result-object v5

    return-void
.end method
