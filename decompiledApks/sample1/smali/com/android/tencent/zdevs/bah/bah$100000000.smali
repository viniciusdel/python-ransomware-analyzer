.class Lcom/android/tencent/zdevs/bah/bah$100000000;
.super Ljava/lang/Object;
.source "bah.java"

# interfaces
.implements Landroid/os/Handler$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/bah;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000000"
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

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/bah$100000000;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/bah$100000000;)Lcom/android/tencent/zdevs/bah/bah;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/bah$100000000;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)Z
    .locals 5
    .annotation runtime Ljava/lang/Override;
    .end annotation

    .prologue
    .line 22
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/bah$100000000;->this$0:Lcom/android/tencent/zdevs/bah/bah;

    invoke-static {v3}, Lcom/android/tencent/zdevs/bah/bah;->access$L1000000(Lcom/android/tencent/zdevs/bah/bah;)Lcom/android/tencent/zdevs/bah/QQqun571012706;

    move-result-object v3

    move-object v4, v1

    iget v4, v4, Landroid/os/Message;->what:I

    invoke-virtual {v3, v4}, Lcom/android/tencent/zdevs/bah/QQqun571012706;->setProgress(I)V

    .line 23
    const/4 v3, 0x0

    move v0, v3

    return v0
.end method
