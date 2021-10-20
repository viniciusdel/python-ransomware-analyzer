.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;
.super Ljava/lang/Object;
.source "qq1279525738.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000003"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;)Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 174
    move-object v0, p0

    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->fi:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    sget-object v7, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    const/4 v8, 0x1

    invoke-static {v6, v7, v8}, Lcom/android/tencent/zdevs/bah/sss;->GetFiles(Ljava/lang/String;Ljava/lang/String;Z)V

    .line 175
    sget-object v6, Lcom/android/tencent/zdevs/bah/sss;->lstFile:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    const/4 v7, 0x0

    if-ne v6, v7, :cond_0

    .line 176
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    const-string v7, "XH"

    move-object v8, v0

    iget-object v8, v8, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    invoke-static {v8}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v8

    invoke-virtual {v8}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v8

    sget v8, Landroid/content/Context;->MODE_PRIVATE:I

    invoke-virtual {v6, v7, v8}, Landroid/support/v4/app/FragmentActivity;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v2, v6

    .line 177
    move-object v6, v2

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v3, v6

    .line 178
    move-object v6, v3

    const-string v7, "cjk"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 179
    move-object v6, v3

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 180
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v6

    invoke-static {v6}, Lcom/android/tencent/zdevs/bah/qq1279525738;->access$L1000017(Lcom/android/tencent/zdevs/bah/qq1279525738;)Landroid/os/Handler;

    move-result-object v6

    const v7, 0x4c44036a    # 5.138372E7f

    invoke-virtual {v6, v7}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move-object v4, v6

    .line 181
    move-object v6, v4

    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    .line 183
    :goto_0
    return-void

    :cond_0
    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->fi:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    invoke-static {v7}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v7

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/qq1279525738;->ed:Landroid/widget/EditText;

    invoke-virtual {v7}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v7

    invoke-interface {v7}, Landroid/text/Editable;->toString()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004$100000003;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;

    invoke-static {v9}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000004;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v9

    invoke-virtual {v9}, Lcom/android/tencent/zdevs/bah/qq1279525738;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v9

    invoke-static {v6, v7, v8, v9}, Lcom/android/tencent/zdevs/bah/sss;->deleteDir(Ljava/lang/String;Ljava/lang/String;ILandroid/content/Context;)V

    goto :goto_0
.end method
