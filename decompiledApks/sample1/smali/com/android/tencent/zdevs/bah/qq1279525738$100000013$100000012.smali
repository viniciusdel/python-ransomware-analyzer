.class Lcom/android/tencent/zdevs/bah/qq1279525738$100000013$100000012;
.super Ljava/util/TimerTask;
.source "qq1279525738.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x20
    name = "100000012"
.end annotation


# instance fields
.field private final this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;


# direct methods
.method constructor <init>(Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;)V
    .locals 5

    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    invoke-direct {v3}, Ljava/util/TimerTask;-><init>()V

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013$100000012;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;

    return-void
.end method

.method static access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000013$100000012;)Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;
    .locals 4

    move-object v0, p0

    move-object v3, v0

    iget-object v3, v3, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013$100000012;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;

    move-object v0, v3

    return-object v0
.end method


# virtual methods
.method public run()V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 282
    move-object v0, p0

    move-object v2, v0

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013$100000012;->this$0:Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;

    invoke-static {v2}, Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;->access$0(Lcom/android/tencent/zdevs/bah/qq1279525738$100000013;)Lcom/android/tencent/zdevs/bah/qq1279525738;

    move-result-object v2

    iget-object v2, v2, Lcom/android/tencent/zdevs/bah/qq1279525738;->ScrollView:Landroid/widget/ScrollView;

    const/16 v3, 0x82

    invoke-virtual {v2, v3}, Landroid/widget/ScrollView;->fullScroll(I)Z

    move-result v2

    return-void
.end method
