.class public Landroid/support/v4/app/FragmentActivity;
.super Landroid/support/v4/app/BaseFragmentActivityHoneycomb;
.source "FragmentActivity.java"

# interfaces
.implements Landroid/support/v4/app/ActivityCompat$OnRequestPermissionsResultCallback;
.implements Landroid/support/v4/app/ActivityCompatApi23$RequestPermissionsRequestCodeValidator;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/FragmentActivity$HostCallbacks;,
        Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;
    }
.end annotation


# static fields
.field static final FRAGMENTS_TAG:Ljava/lang/String; = "android:support:fragments"

.field private static final HONEYCOMB:I = 0xb

.field static final MSG_REALLY_STOPPED:I = 0x1

.field static final MSG_RESUME_PENDING:I = 0x2

.field private static final TAG:Ljava/lang/String; = "FragmentActivity"


# instance fields
.field mCreated:Z

.field final mFragments:Landroid/support/v4/app/FragmentController;

.field final mHandler:Landroid/os/Handler;

.field mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

.field mOptionsMenuInvalidated:Z

.field mReallyStopped:Z

.field mRequestedPermissionsFromFragment:Z

.field mResumed:Z

.field mRetaining:Z

.field mStopped:Z


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;-><init>()V

    .line 92
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$1;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    .line 111
    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentActivity$HostCallbacks;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Landroid/support/v4/app/FragmentActivity$HostCallbacks;-><init>(Landroid/support/v4/app/FragmentActivity;)V

    invoke-static {v2}, Landroid/support/v4/app/FragmentController;->createController(Landroid/support/v4/app/FragmentHostCallback;)Landroid/support/v4/app/FragmentController;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    .line 875
    return-void
.end method

.method static synthetic access$000(Landroid/support/v4/app/FragmentActivity;Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move v7, v3

    invoke-direct {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    return-void
.end method

.method private dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V
    .locals 13

    .prologue
    .line 710
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move-object v7, v2

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 711
    move-object v7, v3

    if-nez v7, :cond_0

    .line 712
    move-object v7, v2

    const-string v8, "null"

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 728
    :goto_0
    return-void

    .line 715
    :cond_0
    move-object v7, v2

    move-object v8, v3

    invoke-static {v8}, Landroid/support/v4/app/FragmentActivity;->viewToString(Landroid/view/View;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 716
    move-object v7, v3

    instance-of v7, v7, Landroid/view/ViewGroup;

    if-nez v7, :cond_1

    .line 717
    goto :goto_0

    .line 719
    :cond_1
    move-object v7, v3

    check-cast v7, Landroid/view/ViewGroup;

    move-object v4, v7

    .line 720
    move-object v7, v4

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v7

    move v5, v7

    .line 721
    move v7, v5

    if-gtz v7, :cond_2

    .line 722
    goto :goto_0

    .line 724
    :cond_2
    new-instance v7, Ljava/lang/StringBuilder;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v1, v7

    .line 725
    const/4 v7, 0x0

    move v6, v7

    :goto_1
    move v7, v6

    move v8, v5

    if-ge v7, v8, :cond_3

    .line 726
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v4

    move v11, v6

    invoke-virtual {v10, v11}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v10

    invoke-direct {v7, v8, v9, v10}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 725
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 728
    :cond_3
    goto :goto_0
.end method

.method private requestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V
    .locals 10

    .prologue
    .line 863
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 864
    move-object v4, v0

    move-object v5, v2

    move v6, v3

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 873
    :goto_0
    return-void

    .line 867
    :cond_0
    move v4, v3

    const/16 v5, -0x100

    and-int/lit16 v4, v4, -0x100

    if-eqz v4, :cond_1

    .line 868
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Can only use lower 8 bits for requestCode"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 870
    :cond_1
    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 871
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x8

    shl-int/lit8 v6, v6, 0x8

    move v7, v3

    const/16 v8, 0xff

    and-int/lit16 v7, v7, 0xff

    add-int/2addr v6, v7

    invoke-static {v4, v5, v6}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 873
    goto :goto_0
.end method

.method private static viewToString(Landroid/view/View;)Ljava/lang/String;
    .locals 11

    .prologue
    .line 644
    move-object v0, p0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    const/16 v9, 0x80

    invoke-direct {v8, v9}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v7

    .line 645
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 646
    move-object v7, v1

    const/16 v8, 0x7b

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 647
    move-object v7, v1

    move-object v8, v0

    invoke-static {v8}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v8

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 648
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 649
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    move-result v7

    sparse-switch v7, :sswitch_data_0

    .line 653
    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 655
    :goto_0
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocusable()Z

    move-result v8

    if-eqz v8, :cond_1

    const/16 v8, 0x46

    :goto_1
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 656
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isEnabled()Z

    move-result v8

    if-eqz v8, :cond_2

    const/16 v8, 0x45

    :goto_2
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 657
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->willNotDraw()Z

    move-result v8

    if-eqz v8, :cond_3

    const/16 v8, 0x2e

    :goto_3
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 658
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isHorizontalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_4

    const/16 v8, 0x48

    :goto_4
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 659
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isVerticalScrollBarEnabled()Z

    move-result v8

    if-eqz v8, :cond_5

    const/16 v8, 0x56

    :goto_5
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 660
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isClickable()Z

    move-result v8

    if-eqz v8, :cond_6

    const/16 v8, 0x43

    :goto_6
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 661
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isLongClickable()Z

    move-result v8

    if-eqz v8, :cond_7

    const/16 v8, 0x4c

    :goto_7
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 662
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 663
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isFocused()Z

    move-result v8

    if-eqz v8, :cond_8

    const/16 v8, 0x46

    :goto_8
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 664
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isSelected()Z

    move-result v8

    if-eqz v8, :cond_9

    const/16 v8, 0x53

    :goto_9
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 665
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->isPressed()Z

    move-result v8

    if-eqz v8, :cond_a

    const/16 v8, 0x50

    :goto_a
    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 666
    move-object v7, v1

    const/16 v8, 0x20

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 667
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 668
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 669
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 670
    move-object v7, v1

    const/16 v8, 0x2d

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 671
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 672
    move-object v7, v1

    const/16 v8, 0x2c

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 673
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 674
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v7

    move v2, v7

    .line 675
    move v7, v2

    const/4 v8, -0x1

    if-eq v7, v8, :cond_0

    .line 676
    move-object v7, v1

    const-string v8, " #"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 677
    move-object v7, v1

    move v8, v2

    invoke-static {v8}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 678
    move-object v7, v0

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    move-object v3, v7

    .line 679
    move v7, v2

    if-eqz v7, :cond_0

    move-object v7, v3

    if-eqz v7, :cond_0

    .line 682
    move v7, v2

    const/high16 v8, -0x1000000

    and-int/2addr v7, v8

    sparse-switch v7, :sswitch_data_1

    .line 690
    move-object v7, v3

    move v8, v2

    :try_start_0
    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourcePackageName(I)Ljava/lang/String;

    move-result-object v7

    move-object v4, v7

    .line 693
    :goto_b
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceTypeName(I)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 694
    move-object v7, v3

    move v8, v2

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getResourceEntryName(I)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 695
    move-object v7, v1

    const-string v8, " "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 696
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 697
    move-object v7, v1

    const-string v8, ":"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 698
    move-object v7, v1

    move-object v8, v5

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 699
    move-object v7, v1

    const-string v8, "/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 700
    move-object v7, v1

    move-object v8, v6

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v7

    .line 705
    :cond_0
    :goto_c
    move-object v7, v1

    const-string v8, "}"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 706
    move-object v7, v1

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v0, v7

    return-object v0

    .line 650
    :sswitch_0
    move-object v7, v1

    const/16 v8, 0x56

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 651
    :sswitch_1
    move-object v7, v1

    const/16 v8, 0x49

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 652
    :sswitch_2
    move-object v7, v1

    const/16 v8, 0x47

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    goto/16 :goto_0

    .line 655
    :cond_1
    const/16 v8, 0x2e

    goto/16 :goto_1

    .line 656
    :cond_2
    const/16 v8, 0x2e

    goto/16 :goto_2

    .line 657
    :cond_3
    const/16 v8, 0x44

    goto/16 :goto_3

    .line 658
    :cond_4
    const/16 v8, 0x2e

    goto/16 :goto_4

    .line 659
    :cond_5
    const/16 v8, 0x2e

    goto/16 :goto_5

    .line 660
    :cond_6
    const/16 v8, 0x2e

    goto/16 :goto_6

    .line 661
    :cond_7
    const/16 v8, 0x2e

    goto/16 :goto_7

    .line 663
    :cond_8
    const/16 v8, 0x2e

    goto/16 :goto_8

    .line 664
    :cond_9
    const/16 v8, 0x2e

    goto/16 :goto_9

    .line 665
    :cond_a
    const/16 v8, 0x2e

    goto/16 :goto_a

    .line 684
    :sswitch_3
    :try_start_1
    const-string v7, "app"

    move-object v4, v7

    .line 685
    goto/16 :goto_b

    .line 687
    :sswitch_4
    const-string v7, "android"
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    move-object v4, v7

    .line 688
    goto/16 :goto_b

    .line 701
    :catch_0
    move-exception v7

    move-object v4, v7

    goto :goto_c

    .line 649
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x4 -> :sswitch_1
        0x8 -> :sswitch_2
    .end sparse-switch

    .line 682
    :sswitch_data_1
    .sparse-switch
        0x1000000 -> :sswitch_4
        0x7f000000 -> :sswitch_3
    .end sparse-switch
.end method


# virtual methods
.method final dispatchFragmentsOnCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 314
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentController;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method doReallyStop(Z)V
    .locals 4

    .prologue
    .line 731
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    if-nez v2, :cond_0

    .line 732
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 733
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    .line 734
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/os/Handler;->removeMessages(I)V

    .line 735
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->onReallyStop()V

    .line 737
    :cond_0
    return-void
.end method

.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 12

    .prologue
    .line 624
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object/from16 v4, p4

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0xb

    if-lt v6, v7, :cond_0

    .line 628
    :cond_0
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "Local FragmentActivity "

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 629
    move-object v6, v3

    move-object v7, v0

    invoke-static {v7}, Ljava/lang/System;->identityHashCode(Ljava/lang/Object;)I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 630
    move-object v6, v3

    const-string v7, " State:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 631
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v5, v6

    .line 632
    move-object v6, v3

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "mCreated="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 633
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, "mResumed="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 634
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 635
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Z)V

    move-object v6, v3

    const-string v7, " mReallyStopped="

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 636
    move-object v6, v3

    move-object v7, v0

    iget-boolean v7, v7, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Z)V

    .line 637
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v7, v5

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentController;->dumpLoaders(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 638
    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v6}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v6

    move-object v7, v1

    move-object v8, v2

    move-object v9, v3

    move-object v10, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Landroid/support/v4/app/FragmentManager;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 639
    move-object v6, v3

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v6, v3

    const-string v7, "View Hierarchy:"

    invoke-virtual {v6, v7}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 640
    move-object v6, v0

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    move-object v9, v0

    invoke-virtual {v9}, Landroid/support/v4/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v9

    invoke-virtual {v9}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v9

    invoke-direct {v6, v7, v8, v9}, Landroid/support/v4/app/FragmentActivity;->dumpViewHierarchy(Ljava/lang/String;Ljava/io/PrintWriter;Landroid/view/View;)V

    .line 641
    return-void
.end method

.method public getLastCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 588
    move-object v0, p0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v1, v2

    .line 590
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    :goto_0
    move-object v0, v2

    return-object v0

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 768
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 2

    .prologue
    .line 772
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportLoaderManager()Landroid/support/v4/app/LoaderManager;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getSupportMediaController()Landroid/support/v4/media/session/MediaControllerCompat;
    .locals 2

    .prologue
    .line 204
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    move-object v0, v1

    return-object v0
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 13

    .prologue
    .line 139
    move-object v0, p0

    move v1, p1

    move v2, p2

    move-object/from16 v3, p3

    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 140
    move v8, v1

    const/16 v9, 0x10

    shr-int/lit8 v8, v8, 0x10

    move v4, v8

    .line 141
    move v8, v4

    if-eqz v8, :cond_3

    .line 142
    add-int/lit8 v4, v4, -0x1

    .line 143
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I

    move-result v8

    move v5, v8

    .line 144
    move v8, v5

    if-eqz v8, :cond_0

    move v8, v4

    if-ltz v8, :cond_0

    move v8, v4

    move v9, v5

    if-lt v8, v9, :cond_1

    .line 145
    :cond_0
    const-string v8, "FragmentActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity result fragment index out of range: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 162
    :goto_0
    return-void

    .line 149
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move v11, v5

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    .line 151
    move-object v8, v6

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v7, v8

    .line 152
    move-object v8, v7

    if-nez v8, :cond_2

    .line 153
    const-string v8, "FragmentActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 158
    :goto_1
    goto :goto_0

    .line 156
    :cond_2
    move-object v8, v7

    move v9, v1

    const v10, 0xffff

    and-int/2addr v9, v10

    move v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    goto :goto_1

    .line 161
    :cond_3
    move-object v8, v0

    move v9, v1

    move v10, v2

    move-object v11, v3

    invoke-super {v8, v9, v10, v11}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onActivityResult(IILandroid/content/Intent;)V

    .line 162
    goto :goto_0
.end method

.method public onAttachFragment(Landroid/support/v4/app/Fragment;)V
    .locals 0

    .prologue
    .line 761
    return-void
.end method

.method public onBackPressed()V
    .locals 2

    .prologue
    .line 169
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManager;->popBackStackImmediate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 170
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->supportFinishAfterTransition()V

    .line 172
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 266
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 267
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentController;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 268
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 7
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 276
    move-object v0, p0

    move-object v1, p1

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->attachHost(Landroid/support/v4/app/Fragment;)V

    .line 278
    move-object v4, v0

    move-object v5, v1

    invoke-super {v4, v5}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreate(Landroid/os/Bundle;)V

    .line 280
    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentActivity;->getLastNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v2, v4

    .line 282
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 283
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentController;->restoreLoaderNonConfig(Landroid/support/v4/util/SimpleArrayMap;)V

    .line 285
    :cond_0
    move-object v4, v1

    if-eqz v4, :cond_1

    .line 286
    move-object v4, v1

    const-string v5, "android:support:fragments"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    move-object v3, v4

    .line 287
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v5, v3

    move-object v6, v2

    if-eqz v6, :cond_2

    move-object v6, v2

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;

    :goto_0
    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/FragmentController;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 289
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentController;->dispatchCreate()V

    .line 290
    return-void

    .line 287
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public onCreatePanelMenu(ILandroid/view/Menu;)Z
    .locals 8

    .prologue
    .line 297
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v4, v1

    if-nez v4, :cond_1

    .line 298
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v3, v4

    .line 299
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Landroid/support/v4/app/FragmentActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentController;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 300
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v5, 0xb

    if-lt v4, v5, :cond_0

    .line 301
    move v4, v3

    move v0, v4

    .line 308
    :goto_0
    return v0

    .line 306
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0

    .line 308
    :cond_1
    move-object v4, v0

    move v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v4

    move v0, v4

    goto :goto_0
.end method

.method public bridge synthetic onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 10

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-super {v5, v6, v7, v8, v9}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Landroid/view/View;Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v5

    move-object v0, v5

    return-object v0
.end method

.method public bridge synthetic onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;
    .locals 8

    .prologue
    .line 79
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-super {v4, v5, v6, v7}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onCreateView(Ljava/lang/String;Landroid/content/Context;Landroid/util/AttributeSet;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method protected onDestroy()V
    .locals 3

    .prologue
    .line 322
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onDestroy()V

    .line 324
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 326
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchDestroy()V

    .line 327
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->doLoaderDestroy()V

    .line 328
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 6

    .prologue
    .line 335
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/4 v4, 0x5

    if-ge v3, v4, :cond_0

    move v3, v1

    const/4 v4, 0x4

    if-ne v3, v4, :cond_0

    move-object v3, v2

    invoke-virtual {v3}, Landroid/view/KeyEvent;->getRepeatCount()I

    move-result v3

    if-nez v3, :cond_0

    .line 340
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentActivity;->onBackPressed()V

    .line 341
    const/4 v3, 0x1

    move v0, v3

    .line 344
    :goto_0
    return v0

    :cond_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v3

    move v0, v3

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 2

    .prologue
    .line 352
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onLowMemory()V

    .line 353
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchLowMemory()V

    .line 354
    return-void
.end method

.method public onMenuItemSelected(ILandroid/view/MenuItem;)Z
    .locals 6

    .prologue
    .line 361
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onMenuItemSelected(ILandroid/view/MenuItem;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 362
    const/4 v3, 0x1

    move v0, v3

    .line 373
    :goto_0
    return v0

    .line 365
    :cond_0
    move v3, v1

    sparse-switch v3, :sswitch_data_0

    .line 373
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 367
    :sswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 370
    :sswitch_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v3

    move v0, v3

    goto :goto_0

    .line 365
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x6 -> :sswitch_1
    .end sparse-switch
.end method

.method protected onNewIntent(Landroid/content/Intent;)V
    .locals 4

    .prologue
    .line 416
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onNewIntent(Landroid/content/Intent;)V

    .line 417
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 418
    return-void
.end method

.method public onPanelClosed(ILandroid/view/Menu;)V
    .locals 6

    .prologue
    .line 382
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move v3, v1

    packed-switch v3, :pswitch_data_0

    .line 387
    :goto_0
    move-object v3, v0

    move v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPanelClosed(ILandroid/view/Menu;)V

    .line 388
    return-void

    .line 384
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentController;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    goto :goto_0

    .line 382
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onPause()V
    .locals 3

    .prologue
    .line 395
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPause()V

    .line 396
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 397
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->hasMessages(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 398
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 399
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 401
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchPause()V

    .line 402
    return-void
.end method

.method protected onPostResume()V
    .locals 3

    .prologue
    .line 449
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPostResume()V

    .line 450
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 451
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->onResumeFragments()V

    .line 452
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 453
    return-void
.end method

.method protected onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z
    .locals 7

    .prologue
    .line 487
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    const/4 v4, 0x0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v3, v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v3

    move v0, v3

    return v0
.end method

.method public onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z
    .locals 9

    .prologue
    .line 470
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, p3

    move v5, v1

    if-nez v5, :cond_1

    move-object v5, v3

    if-eqz v5, :cond_1

    .line 471
    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    if-eqz v5, :cond_0

    .line 472
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 473
    move-object v5, v3

    invoke-interface {v5}, Landroid/view/Menu;->clear()V

    .line 474
    move-object v5, v0

    move v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onCreatePanelMenu(ILandroid/view/Menu;)Z

    move-result v5

    .line 476
    :cond_0
    move-object v5, v0

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onPrepareOptionsPanel(Landroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v4, v5

    .line 477
    move v5, v4

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v7, v3

    invoke-virtual {v6, v7}, Landroid/support/v4/app/FragmentController;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v6

    or-int/2addr v5, v6

    move v4, v5

    .line 478
    move v5, v4

    move v0, v5

    .line 480
    :goto_0
    return v0

    :cond_1
    move-object v5, v0

    move v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-super {v5, v6, v7, v8}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onPreparePanel(ILandroid/view/View;Landroid/view/Menu;)Z

    move-result v5

    move v0, v5

    goto :goto_0
.end method

.method onReallyStop()V
    .locals 3

    .prologue
    .line 747
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mRetaining:Z

    invoke-virtual {v1, v2}, Landroid/support/v4/app/FragmentController;->doLoaderStop(Z)V

    .line 749
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchReallyStop()V

    .line 750
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 13
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 822
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object/from16 v3, p3

    move v8, v1

    const/16 v9, 0x8

    shr-int/lit8 v8, v8, 0x8

    const/16 v9, 0xff

    and-int/lit16 v8, v8, 0xff

    move v4, v8

    .line 823
    move v8, v4

    if-eqz v8, :cond_2

    .line 824
    add-int/lit8 v4, v4, -0x1

    .line 825
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v8}, Landroid/support/v4/app/FragmentController;->getActiveFragmentsCount()I

    move-result v8

    move v5, v8

    .line 826
    move v8, v5

    if-eqz v8, :cond_0

    move v8, v4

    if-ltz v8, :cond_0

    move v8, v4

    move v9, v5

    if-lt v8, v9, :cond_1

    .line 827
    :cond_0
    const-string v8, "FragmentActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity result fragment index out of range: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 841
    :goto_0
    return-void

    .line 831
    :cond_1
    move-object v8, v0

    iget-object v8, v8, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    new-instance v9, Ljava/util/ArrayList;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    move v11, v5

    invoke-direct {v10, v11}, Ljava/util/ArrayList;-><init>(I)V

    invoke-virtual {v8, v9}, Landroid/support/v4/app/FragmentController;->getActiveFragments(Ljava/util/List;)Ljava/util/List;

    move-result-object v8

    move-object v6, v8

    .line 833
    move-object v8, v6

    move v9, v4

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/support/v4/app/Fragment;

    move-object v7, v8

    .line 834
    move-object v8, v7

    if-nez v8, :cond_3

    .line 835
    const-string v8, "FragmentActivity"

    new-instance v9, Ljava/lang/StringBuilder;

    move-object v12, v9

    move-object v9, v12

    move-object v10, v12

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Activity result no fragment exists for index: 0x"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    move v10, v1

    invoke-static {v10}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-result v8

    .line 841
    :cond_2
    :goto_1
    goto :goto_0

    .line 838
    :cond_3
    move-object v8, v7

    move v9, v1

    const/16 v10, 0xff

    and-int/lit16 v9, v9, 0xff

    move-object v10, v2

    move-object v11, v3

    invoke-virtual {v8, v9, v10, v11}, Landroid/support/v4/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_1
.end method

.method protected onResume()V
    .locals 3

    .prologue
    .line 438
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onResume()V

    .line 439
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 440
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mResumed:Z

    .line 441
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 442
    return-void
.end method

.method protected onResumeFragments()V
    .locals 2

    .prologue
    .line 462
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchResume()V

    .line 463
    return-void
.end method

.method public onRetainCustomNonConfigurationInstance()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 579
    move-object v0, p0

    const/4 v1, 0x0

    move-object v0, v1

    return-object v0
.end method

.method public final onRetainNonConfigurationInstance()Ljava/lang/Object;
    .locals 8

    .prologue
    .line 497
    move-object v0, p0

    move-object v5, v0

    iget-boolean v5, v5, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    if-eqz v5, :cond_0

    .line 498
    move-object v5, v0

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->doReallyStop(Z)V

    .line 501
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentActivity;->onRetainCustomNonConfigurationInstance()Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    .line 503
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->retainNonConfig()Ljava/util/List;

    move-result-object v5

    move-object v2, v5

    .line 504
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentController;->retainLoaderNonConfig()Landroid/support/v4/util/SimpleArrayMap;

    move-result-object v5

    move-object v3, v5

    .line 506
    move-object v5, v2

    if-nez v5, :cond_1

    move-object v5, v3

    if-nez v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_1

    .line 507
    const/4 v5, 0x0

    move-object v0, v5

    .line 514
    :goto_0
    return-object v0

    .line 510
    :cond_1
    new-instance v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;-><init>()V

    move-object v4, v5

    .line 511
    move-object v5, v4

    move-object v6, v1

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->custom:Ljava/lang/Object;

    .line 512
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->fragments:Ljava/util/List;

    .line 513
    move-object v5, v4

    move-object v6, v3

    iput-object v6, v5, Landroid/support/v4/app/FragmentActivity$NonConfigurationInstances;->loaders:Landroid/support/v4/util/SimpleArrayMap;

    .line 514
    move-object v5, v4

    move-object v0, v5

    goto :goto_0
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 522
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-super {v3, v4}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 523
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentController;->saveAllState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 524
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 525
    move-object v3, v1

    const-string v4, "android:support:fragments"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 527
    :cond_0
    return-void
.end method

.method protected onStart()V
    .locals 3

    .prologue
    .line 535
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStart()V

    .line 537
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 538
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mReallyStopped:Z

    .line 539
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    .line 541
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    if-nez v1, :cond_0

    .line 542
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mCreated:Z

    .line 543
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchActivityCreated()V

    .line 546
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 547
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->execPendingActions()Z

    move-result v1

    .line 549
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->doLoaderStart()V

    .line 553
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchStart()V

    .line 554
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->reportLoaderStart()V

    .line 555
    return-void
.end method

.method public onStateNotSaved()V
    .locals 2

    .prologue
    .line 424
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->noteStateNotSaved()V

    .line 425
    return-void
.end method

.method protected onStop()V
    .locals 3

    .prologue
    .line 562
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->onStop()V

    .line 564
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mStopped:Z

    .line 565
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    move-result v1

    .line 567
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/FragmentActivity;->mFragments:Landroid/support/v4/app/FragmentController;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentController;->dispatchStop()V

    .line 568
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 229
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->setEnterSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 230
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 242
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat;->setExitSharedElementCallback(Landroid/app/Activity;Landroid/support/v4/app/SharedElementCallback;)V

    .line 243
    return-void
.end method

.method public final setSupportMediaController(Landroid/support/v4/media/session/MediaControllerCompat;)V
    .locals 4

    .prologue
    .line 190
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/FragmentActivity;->mMediaController:Landroid/support/v4/media/session/MediaControllerCompat;

    .line 191
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_0

    .line 192
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v3}, Landroid/support/v4/media/session/MediaControllerCompat;->getMediaController()Ljava/lang/Object;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/support/v4/app/ActivityCompat21;->setMediaController(Landroid/app/Activity;Ljava/lang/Object;)V

    .line 194
    :cond_0
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 7

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, v2

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    move v3, v2

    const/high16 v4, -0x10000

    and-int/2addr v3, v4

    if-eqz v3, :cond_0

    .line 782
    new-instance v3, Ljava/lang/IllegalArgumentException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Can only use lower 16 bits for requestCode"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 784
    :cond_0
    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-super {v3, v4, v5}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 785
    return-void
.end method

.method public startActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 10

    .prologue
    .line 848
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, v3

    const/4 v5, -0x1

    if-ne v4, v5, :cond_0

    .line 849
    move-object v4, v0

    move-object v5, v2

    const/4 v6, -0x1

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    :goto_0
    return-void

    .line 852
    :cond_0
    move v4, v3

    const/high16 v5, -0x10000

    and-int/2addr v4, v5

    if-eqz v4, :cond_1

    .line 853
    new-instance v4, Ljava/lang/IllegalArgumentException;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    const-string v6, "Can only use lower 16 bits for requestCode"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 855
    :cond_1
    move-object v4, v0

    move-object v5, v2

    move-object v6, v1

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    const/16 v7, 0x10

    shl-int/lit8 v6, v6, 0x10

    move v7, v3

    const v8, 0xffff

    and-int/2addr v7, v8

    add-int/2addr v6, v7

    invoke-super {v4, v5, v6}, Landroid/support/v4/app/BaseFragmentActivityHoneycomb;->startActivityForResult(Landroid/content/Intent;I)V

    .line 856
    goto :goto_0
.end method

.method public supportFinishAfterTransition()V
    .locals 2

    .prologue
    .line 217
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->finishAfterTransition(Landroid/app/Activity;)V

    .line 218
    return-void
.end method

.method public supportInvalidateOptionsMenu()V
    .locals 3

    .prologue
    .line 601
    move-object v0, p0

    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0xb

    if-lt v1, v2, :cond_0

    .line 604
    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompatHoneycomb;->invalidateOptionsMenu(Landroid/app/Activity;)V

    .line 611
    :goto_0
    return-void

    .line 610
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/FragmentActivity;->mOptionsMenuInvalidated:Z

    .line 611
    goto :goto_0
.end method

.method public supportPostponeEnterTransition()V
    .locals 2

    .prologue
    .line 250
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->postponeEnterTransition(Landroid/app/Activity;)V

    .line 251
    return-void
.end method

.method public supportStartPostponedEnterTransition()V
    .locals 2

    .prologue
    .line 258
    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Landroid/support/v4/app/ActivityCompat;->startPostponedEnterTransition(Landroid/app/Activity;)V

    .line 259
    return-void
.end method

.method public final validateRequestPermissionsRequestCode(I)V
    .locals 6

    .prologue
    .line 796
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    if-eqz v2, :cond_1

    .line 797
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/FragmentActivity;->mRequestedPermissionsFromFragment:Z

    .line 801
    :cond_0
    return-void

    .line 798
    :cond_1
    move v2, v1

    const/16 v3, -0x100

    and-int/lit16 v2, v2, -0x100

    if-eqz v2, :cond_0

    .line 799
    new-instance v2, Ljava/lang/IllegalArgumentException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Can only use lower 8 bits for requestCode"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
