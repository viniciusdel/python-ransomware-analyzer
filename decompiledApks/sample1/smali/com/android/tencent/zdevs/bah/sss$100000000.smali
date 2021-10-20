.class Lcom/android/tencent/zdevs/bah/sss$100000000;
.super Ljava/util/TimerTask;
.source "sss.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/sss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
.end annotation


# instance fields
.field private final val$cn:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/sss$100000000;->val$cn:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 31
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000000;->val$cn:Landroid/content/Context;

    const-string v7, "XH"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v2, v6

    .line 32
    move-object v6, v2

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v3, v6

    .line 33
    move-object v6, v3

    const-string v7, "sss"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 34
    move-object v6, v3

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 35
    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->instance:Lcom/android/tencent/zdevs/bah/MainActivity;

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->finish()V

    .line 36
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000000;->val$cn:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000000;->val$cn:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    .line 37
    move-object v6, v4

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 38
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000000;->val$cn:Landroid/content/Context;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    return-void
.end method
