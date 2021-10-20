.class Lcom/android/tencent/zdevs/bah/bah$100000001;
.super Ljava/lang/Object;
.source "bah.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/bah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000001"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/bah;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/bah;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/bah$100000001;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/bah$100000001;)Lcom/android/tencent/zdevs/bah/bah;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/bah$100000001;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 35
    move-object v0, p0

    const/4 v5, 0x0

    move v2, v5

    :goto_0
    move v5, v2

    const/16 v6, 0x31

    if-le v5, v6, :cond_0

    return-void

    .line 36
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/android/tencent/zdevs/bah/bah$100000001;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    invoke-static {v5}, Lcom/android/tencent/zdevs/bah/bah;->access$L1000001(Lcom/android/tencent/zdevs/bah/bah;)Landroid/os/Handler;

    move-result-object v5

    move v6, v2

    const/4 v7, 0x2

    mul-int/lit8 v6, v6, 0x2

    invoke-virtual {v5, v6}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v5

    .line 38
    const/16 v5, 0xbb8

    int-to-long v5, v5

    :try_start_0
    invoke-static {v5, v6}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 35
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 38
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 41
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_1
.end method
