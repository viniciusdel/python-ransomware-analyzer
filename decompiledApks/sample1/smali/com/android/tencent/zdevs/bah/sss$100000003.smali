.class Lcom/android/tencent/zdevs/bah/sss$100000003;
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
    name = "100000003"
.end annotation


# instance fields
.field private final val$file:Ljava/io/File;


# direct methods
.method constructor <init>(Ljava/io/File;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

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

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 337
    move-object v0, p0

    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v7

    const-string v8, "\u5f7c\u5cb8\u82b1\u5f00"

    invoke-virtual {v7, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 338
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isFile()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 339
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 351
    :goto_0
    return-void

    .line 342
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->isDirectory()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 343
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v7

    move-object v2, v7

    .line 344
    move-object v7, v2

    if-eqz v7, :cond_1

    move-object v7, v2

    array-length v7, v7

    const/4 v8, 0x0

    if-ne v7, v8, :cond_2

    .line 345
    :cond_1
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    .line 346
    goto :goto_0

    .line 348
    :cond_2
    move-object v7, v2

    move-object v3, v7

    const/4 v7, 0x0

    move v4, v7

    .line 349
    :goto_1
    move v7, v4

    move-object v8, v3

    array-length v8, v8

    if-lt v7, v8, :cond_4

    .line 351
    move-object v7, v0

    iget-object v7, v7, Lcom/android/tencent/zdevs/bah/sss$100000003;->val$file:Ljava/io/File;

    invoke-virtual {v7}, Ljava/io/File;->delete()Z

    move-result v7

    :cond_3
    goto :goto_0

    .line 348
    :cond_4
    move-object v7, v3

    move v8, v4

    aget-object v7, v7, v8

    move-object v5, v7

    .line 349
    move-object v7, v5

    invoke-static {v7}, Lcom/android/tencent/zdevs/bah/sss;->sc(Ljava/io/File;)V

    add-int/lit8 v4, v4, 0x1

    goto :goto_1
.end method
