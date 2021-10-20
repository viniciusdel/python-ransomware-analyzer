.class public Landroid/support/v4/app/Fragment;
.super Ljava/lang/Object;
.source "Fragment.java"

# interfaces
.implements Landroid/content/ComponentCallbacks;
.implements Landroid/view/View$OnCreateContextMenuListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/app/Fragment$InstantiationException;,
        Landroid/support/v4/app/Fragment$SavedState;
    }
.end annotation


# static fields
.field static final ACTIVITY_CREATED:I = 0x2

.field static final CREATED:I = 0x1

.field static final INITIALIZING:I = 0x0

.field static final RESUMED:I = 0x5

.field static final STARTED:I = 0x4

.field static final STOPPED:I = 0x3

.field static final USE_DEFAULT_TRANSITION:Ljava/lang/Object;

.field private static final sClassMap:Landroid/support/v4/util/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/support/v4/util/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<*>;>;"
        }
    .end annotation
.end field


# instance fields
.field mAdded:Z

.field mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

.field mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

.field mAnimatingAway:Landroid/view/View;

.field mArguments:Landroid/os/Bundle;

.field mBackStackNesting:I

.field mCalled:Z

.field mCheckedForLoaderManager:Z

.field mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mContainer:Landroid/view/ViewGroup;

.field mContainerId:I

.field mDeferStart:Z

.field mDetached:Z

.field mEnterTransition:Ljava/lang/Object;

.field mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mExitTransition:Ljava/lang/Object;

.field mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

.field mFragmentId:I

.field mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

.field mFromLayout:Z

.field mHasMenu:Z

.field mHidden:Z

.field mHost:Landroid/support/v4/app/FragmentHostCallback;

.field mInLayout:Z

.field mIndex:I

.field mInnerView:Landroid/view/View;

.field mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

.field mLoadersStarted:Z

.field mMenuVisible:Z

.field mNextAnim:I

.field mParentFragment:Landroid/support/v4/app/Fragment;

.field mReenterTransition:Ljava/lang/Object;

.field mRemoving:Z

.field mRestored:Z

.field mResumed:Z

.field mRetainInstance:Z

.field mRetaining:Z

.field mReturnTransition:Ljava/lang/Object;

.field mSavedFragmentState:Landroid/os/Bundle;

.field mSavedViewState:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;"
        }
    .end annotation
.end field

.field mSharedElementEnterTransition:Ljava/lang/Object;

.field mSharedElementReturnTransition:Ljava/lang/Object;

.field mState:I

.field mStateAfterAnimating:I

.field mTag:Ljava/lang/String;

.field mTarget:Landroid/support/v4/app/Fragment;

.field mTargetIndex:I

.field mTargetRequestCode:I

.field mUserVisibleHint:Z

.field mView:Landroid/view/View;

.field mWho:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 169
    new-instance v0, Landroid/support/v4/util/SimpleArrayMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Landroid/support/v4/util/SimpleArrayMap;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    .line 172
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 390
    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 181
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mState:I

    .line 197
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 209
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mTargetIndex:I

    .line 280
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 302
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 308
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 309
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 311
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 312
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 313
    move-object v1, v0

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 317
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 318
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 391
    return-void
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 5

    .prologue
    .line 398
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/support/v4/app/Fragment;->instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public static instantiate(Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;)Landroid/support/v4/app/Fragment;
    .locals 10
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 417
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    :try_start_0
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    invoke-virtual {v5, v6}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Class;

    move-object v3, v5

    .line 418
    move-object v5, v3

    if-nez v5, :cond_0

    .line 420
    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v5

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v5

    move-object v3, v5

    .line 421
    sget-object v5, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v6, v1

    move-object v7, v3

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 423
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/support/v4/app/Fragment;

    move-object v4, v5

    .line 424
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 425
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 426
    move-object v5, v4

    move-object v6, v2

    iput-object v6, v5, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 428
    :cond_1
    move-object v5, v4

    move-object v0, v5

    return-object v0

    .line 429
    :catch_0
    move-exception v5

    move-object v3, v5

    .line 430
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 433
    :catch_1
    move-exception v5

    move-object v3, v5

    .line 434
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5

    .line 437
    :catch_2
    move-exception v5

    move-object v3, v5

    .line 438
    new-instance v5, Landroid/support/v4/app/Fragment$InstantiationException;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    new-instance v7, Ljava/lang/StringBuilder;

    move-object v9, v7

    move-object v7, v9

    move-object v8, v9

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Unable to instantiate fragment "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ": make sure class name exists, is public, and has an"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " empty constructor that is public"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    move-object v8, v3

    invoke-direct {v6, v7, v8}, Landroid/support/v4/app/Fragment$InstantiationException;-><init>(Ljava/lang/String;Ljava/lang/Exception;)V

    throw v5
.end method

.method static isSupportFragmentClass(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6

    .prologue
    .line 454
    move-object v0, p0

    move-object v1, p1

    :try_start_0
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/util/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Class;

    move-object v2, v3

    .line 455
    move-object v3, v2

    if-nez v3, :cond_0

    .line 457
    move-object v3, v0

    invoke-virtual {v3}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v2, v3

    .line 458
    sget-object v3, Landroid/support/v4/app/Fragment;->sClassMap:Landroid/support/v4/util/SimpleArrayMap;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/util/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 460
    :cond_0
    const-class v3, Landroid/support/v4/app/Fragment;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    move v0, v3

    .line 462
    :goto_0
    return v0

    .line 461
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 462
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method


# virtual methods
.method public dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 11

    .prologue
    .line 1829
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mFragmentId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1830
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1831
    move-object v5, v3

    const-string v6, " mContainerId=#"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1832
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mContainerId:I

    invoke-static {v6}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1833
    move-object v5, v3

    const-string v6, " mTag="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1834
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mState:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1835
    move-object v5, v3

    const-string v6, " mIndex="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(I)V

    .line 1836
    move-object v5, v3

    const-string v6, " mWho="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1837
    move-object v5, v3

    const-string v6, " mBackStackNesting="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1838
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mAdded="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mAdded:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1839
    move-object v5, v3

    const-string v6, " mRemoving="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRemoving:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1840
    move-object v5, v3

    const-string v6, " mResumed="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mResumed:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1841
    move-object v5, v3

    const-string v6, " mFromLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1842
    move-object v5, v3

    const-string v6, " mInLayout="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mInLayout:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1843
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mHidden="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mHidden:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1844
    move-object v5, v3

    const-string v6, " mDetached="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mDetached:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1845
    move-object v5, v3

    const-string v6, " mMenuVisible="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1846
    move-object v5, v3

    const-string v6, " mHasMenu="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1847
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mRetainInstance="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1848
    move-object v5, v3

    const-string v6, " mRetaining="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mRetaining:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Z)V

    .line 1849
    move-object v5, v3

    const-string v6, " mUserVisibleHint="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-boolean v6, v6, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Z)V

    .line 1850
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v5, :cond_0

    .line 1851
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mFragmentManager="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1852
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1854
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v5, :cond_1

    .line 1855
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mHost="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1856
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1858
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_2

    .line 1859
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mParentFragment="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1860
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1862
    :cond_2
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    if-eqz v5, :cond_3

    .line 1863
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mArguments="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1865
    :cond_3
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    if-eqz v5, :cond_4

    .line 1866
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSavedFragmentState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1867
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1869
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v5, :cond_5

    .line 1870
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mSavedViewState="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1871
    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1873
    :cond_5
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    if-eqz v5, :cond_6

    .line 1874
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mTarget="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/Object;)V

    .line 1875
    move-object v5, v3

    const-string v6, " mTargetRequestCode="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1876
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1878
    :cond_6
    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mNextAnim:I

    if-eqz v5, :cond_7

    .line 1879
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mNextAnim="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mNextAnim:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1881
    :cond_7
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    if-eqz v5, :cond_8

    .line 1882
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mContainer="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mContainer:Landroid/view/ViewGroup;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1884
    :cond_8
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v5, :cond_9

    .line 1885
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1887
    :cond_9
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    if-eqz v5, :cond_a

    .line 1888
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mInnerView="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1890
    :cond_a
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    if-eqz v5, :cond_b

    .line 1891
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mAnimatingAway="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    move-object v6, v0

    iget-object v6, v6, Landroid/support/v4/app/Fragment;->mAnimatingAway:Landroid/view/View;

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/Object;)V

    .line 1892
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "mStateAfterAnimating="

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 1893
    move-object v5, v3

    move-object v6, v0

    iget v6, v6, Landroid/support/v4/app/Fragment;->mStateAfterAnimating:I

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(I)V

    .line 1895
    :cond_b
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v5, :cond_c

    .line 1896
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    const-string v6, "Loader Manager:"

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1897
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/LoaderManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1899
    :cond_c
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v5, :cond_d

    .line 1900
    move-object v5, v3

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    move-object v5, v3

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Child "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ":"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1901
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    new-instance v6, Ljava/lang/StringBuilder;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/support/v4/app/FragmentManagerImpl;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1903
    :cond_d
    return-void
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4

    .prologue
    .line 496
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    move v0, v2

    return v0
.end method

.method findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
    .locals 4

    .prologue
    .line 1906
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1907
    move-object v2, v0

    move-object v0, v2

    .line 1912
    :goto_0
    return-object v0

    .line 1909
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 1910
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->findFragmentByWho(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v2

    move-object v0, v2

    goto :goto_0

    .line 1912
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    goto :goto_0
.end method

.method public final getActivity()Landroid/support/v4/app/FragmentActivity;
    .locals 2

    .prologue
    .line 623
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v1

    check-cast v1, Landroid/support/v4/app/FragmentActivity;

    goto :goto_0
.end method

.method public getAllowEnterTransitionOverlap()Z
    .locals 2

    .prologue
    .line 1792
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public getAllowReturnTransitionOverlap()Z
    .locals 2

    .prologue
    .line 1816
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    goto :goto_0
.end method

.method public final getArguments()Landroid/os/Bundle;
    .locals 2

    .prologue
    .line 561
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    move-object v0, v1

    return-object v0
.end method

.method public final getChildFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 3

    .prologue
    .line 696
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v1, :cond_0

    .line 697
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 698
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x5

    if-lt v1, v2, :cond_1

    .line 699
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 708
    :cond_0
    :goto_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0

    .line 700
    :cond_1
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x4

    if-lt v1, v2, :cond_2

    .line 701
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    goto :goto_0

    .line 702
    :cond_2
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_3

    .line 703
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    goto :goto_0

    .line 704
    :cond_3
    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    .line 705
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    goto :goto_0
.end method

.method public getContext()Landroid/content/Context;
    .locals 2

    .prologue
    .line 614
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    goto :goto_0
.end method

.method public getEnterTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1607
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getExitTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1675
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public final getFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 2

    .prologue
    .line 688
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v0, v1

    return-object v0
.end method

.method public final getHost()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 631
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->onGetHost()Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method public final getId()I
    .locals 2

    .prologue
    .line 532
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    move v0, v1

    return v0
.end method

.method public getLayoutInflater(Landroid/os/Bundle;)Landroid/view/LayoutInflater;
    .locals 5

    .prologue
    .line 1076
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->onGetLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v3

    move-object v2, v3

    .line 1077
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getChildFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v3

    .line 1078
    move-object v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->getLayoutInflaterFactory()Landroid/support/v4/view/LayoutInflaterFactory;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/support/v4/view/LayoutInflaterCompat;->setFactory(Landroid/view/LayoutInflater;Landroid/support/v4/view/LayoutInflaterFactory;)V

    .line 1079
    move-object v3, v2

    move-object v0, v3

    return-object v0
.end method

.method public getLoaderManager()Landroid/support/v4/app/LoaderManager;
    .locals 7

    .prologue
    .line 897
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_0

    .line 898
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    .line 905
    :goto_0
    return-object v0

    .line 900
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_1

    .line 901
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v6, v1

    move-object v1, v6

    move-object v2, v6

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 903
    :cond_1
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 904
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 905
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getParentFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 716
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    move-object v0, v1

    return-object v0
.end method

.method public getReenterTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1708
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getExitTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getResources()Landroid/content/res/Resources;
    .locals 6

    .prologue
    .line 638
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v1, :cond_0

    .line 639
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " not attached to Activity"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 641
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method public final getRetainInstance()Z
    .locals 2

    .prologue
    .line 827
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    move v0, v1

    return v0
.end method

.method public getReturnTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1641
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public getSharedElementEnterTransition()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 1735
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    move-object v0, v1

    return-object v0
.end method

.method public getSharedElementReturnTransition()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 1767
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    sget-object v2, Landroid/support/v4/app/Fragment;->USE_DEFAULT_TRANSITION:Ljava/lang/Object;

    if-ne v1, v2, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->getSharedElementEnterTransition()Ljava/lang/Object;

    move-result-object v1

    :goto_0
    move-object v0, v1

    return-object v0

    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    goto :goto_0
.end method

.method public final getString(I)Ljava/lang/String;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 661
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public final varargs getString(I[Ljava/lang/Object;)Ljava/lang/String;
    .locals 6
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 674
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    move v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method public final getTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 539
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    move-object v0, v1

    return-object v0
.end method

.method public final getTargetFragment()Landroid/support/v4/app/Fragment;
    .locals 2

    .prologue
    .line 600
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    move-object v0, v1

    return-object v0
.end method

.method public final getTargetRequestCode()I
    .locals 2

    .prologue
    .line 607
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    move v0, v1

    return v0
.end method

.method public final getText(I)Ljava/lang/CharSequence;
    .locals 4
    .param p1    # I
        .annotation build Landroid/support/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 651
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public getUserVisibleHint()Z
    .locals 2

    .prologue
    .line 890
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    move v0, v1

    return v0
.end method

.method public getView()Landroid/view/View;
    .locals 2
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1237
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    move-object v0, v1

    return-object v0
.end method

.method public final hasOptionsMenu()Z
    .locals 2

    .prologue
    .line 786
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    move v0, v1

    return v0
.end method

.method public final hashCode()I
    .locals 2

    .prologue
    .line 503
    move-object v0, p0

    move-object v1, v0

    invoke-super {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    move v0, v1

    return v0
.end method

.method initState()V
    .locals 3

    .prologue
    .line 1387
    move-object v0, p0

    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 1388
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 1389
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    .line 1390
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    .line 1391
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mResumed:Z

    .line 1392
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mFromLayout:Z

    .line 1393
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    .line 1394
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRestored:Z

    .line 1395
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    .line 1396
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1397
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1398
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    .line 1399
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mFragmentId:I

    .line 1400
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Landroid/support/v4/app/Fragment;->mContainerId:I

    .line 1401
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    .line 1402
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    .line 1403
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mDetached:Z

    .line 1404
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mRetaining:Z

    .line 1405
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1406
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1407
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1408
    return-void
.end method

.method instantiateChildFragmentManager()V
    .locals 7

    .prologue
    .line 1916
    move-object v0, p0

    move-object v1, v0

    new-instance v2, Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    invoke-direct {v3}, Landroid/support/v4/app/FragmentManagerImpl;-><init>()V

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    .line 1917
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    new-instance v3, Landroid/support/v4/app/Fragment$1;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Landroid/support/v4/app/Fragment$1;-><init>(Landroid/support/v4/app/Fragment;)V

    move-object v4, v0

    invoke-virtual {v1, v2, v3, v4}, Landroid/support/v4/app/FragmentManagerImpl;->attachController(Landroid/support/v4/app/FragmentHostCallback;Landroid/support/v4/app/FragmentContainer;Landroid/support/v4/app/Fragment;)V

    .line 1932
    return-void
.end method

.method public final isAdded()Z
    .locals 2

    .prologue
    .line 723
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mAdded:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isDetached()Z
    .locals 2

    .prologue
    .line 732
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mDetached:Z

    move v0, v1

    return v0
.end method

.method public final isHidden()Z
    .locals 2

    .prologue
    .line 781
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mHidden:Z

    move v0, v1

    return v0
.end method

.method final isInBackStack()Z
    .locals 2

    .prologue
    .line 489
    move-object v0, p0

    move-object v1, v0

    iget v1, v1, Landroid/support/v4/app/Fragment;->mBackStackNesting:I

    if-lez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final isInLayout()Z
    .locals 2

    .prologue
    .line 752
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mInLayout:Z

    move v0, v1

    return v0
.end method

.method public final isMenuVisible()Z
    .locals 2

    .prologue
    .line 791
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    move v0, v1

    return v0
.end method

.method public final isRemoving()Z
    .locals 2

    .prologue
    .line 741
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mRemoving:Z

    move v0, v1

    return v0
.end method

.method public final isResumed()Z
    .locals 2

    .prologue
    .line 760
    move-object v0, p0

    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mResumed:Z

    move v0, v1

    return v0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 769
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    return v0

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1254
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1255
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 0

    .prologue
    .line 945
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1163
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1164
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 5

    .prologue
    .line 1148
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1149
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_1

    const/4 v3, 0x0

    :goto_0
    move-object v2, v3

    .line 1150
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 1151
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1152
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 1154
    :cond_0
    return-void

    .line 1149
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v3

    goto :goto_0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 1325
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1326
    return-void
.end method

.method public onContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1558
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1188
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1189
    return-void
.end method

.method public onCreateAnimation(IZI)Landroid/view/animation/Animation;
    .locals 5

    .prologue
    .line 1170
    move-object v0, p0

    move v1, p1

    move v2, p2

    move v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 8

    .prologue
    .line 1512
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/FragmentActivity;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 1513
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 0

    .prologue
    .line 1432
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p2    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 1213
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    const/4 v4, 0x0

    move-object v0, v4

    return-object v0
.end method

.method public onDestroy()V
    .locals 6

    .prologue
    .line 1368
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1371
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1372
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1373
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1375
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 1376
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doDestroy()V

    .line 1378
    :cond_1
    return-void
.end method

.method public onDestroyOptionsMenu()V
    .locals 0

    .prologue
    .line 1459
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    .line 1360
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1361
    return-void
.end method

.method public onDetach()V
    .locals 3

    .prologue
    .line 1415
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1416
    return-void
.end method

.method public onHiddenChanged(Z)V
    .locals 0

    .prologue
    .line 802
    return-void
.end method

.method public onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1140
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    const/4 v5, 0x1

    iput-boolean v5, v4, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1141
    return-void
.end method

.method public onInflate(Landroid/content/Context;Landroid/util/AttributeSet;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 1125
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v5, v0

    const/4 v6, 0x1

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1126
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v5, :cond_1

    const/4 v5, 0x0

    :goto_0
    move-object v4, v5

    .line 1127
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1128
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1129
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v5, v6, v7, v8}, Landroid/support/v4/app/Fragment;->onInflate(Landroid/app/Activity;Landroid/util/AttributeSet;Landroid/os/Bundle;)V

    .line 1131
    :cond_0
    return-void

    .line 1126
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v5}, Landroid/support/v4/app/FragmentHostCallback;->getActivity()Landroid/app/Activity;

    move-result-object v5

    goto :goto_0
.end method

.method public onLowMemory()V
    .locals 3

    .prologue
    .line 1347
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1348
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 1480
    move-object v0, p0

    move-object v1, p1

    const/4 v2, 0x0

    move v0, v2

    return v0
.end method

.method public onOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1491
    return-void
.end method

.method public onPause()V
    .locals 3

    .prologue
    .line 1334
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1335
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 0

    .prologue
    .line 1449
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 0
    .param p2    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1041
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 1299
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1300
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1322
    return-void
.end method

.method public onStart()V
    .locals 6

    .prologue
    .line 1278
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1280
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-nez v1, :cond_1

    .line 1281
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 1282
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_0

    .line 1283
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 1284
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 1286
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_1

    .line 1287
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStart()V

    .line 1290
    :cond_1
    return-void
.end method

.method public onStop()V
    .locals 3

    .prologue
    .line 1343
    move-object v0, p0

    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1344
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .param p2    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1227
    return-void
.end method

.method public onViewStateRestored(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 1269
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1270
    return-void
.end method

.method performActivityCreated(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 1966
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 1967
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1969
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1970
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 1971
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 1972
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onActivityCreated()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1975
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_2

    .line 1976
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchActivityCreated()V

    .line 1978
    :cond_2
    return-void
.end method

.method performConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    .prologue
    .line 2017
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2018
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_0

    .line 2019
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2021
    :cond_0
    return-void
.end method

.method performContextItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2084
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2085
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2086
    const/4 v2, 0x1

    move v0, v2

    .line 2094
    :goto_0
    return v0

    .line 2088
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2089
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchContextItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2090
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2094
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performCreate(Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 1935
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 1936
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1938
    :cond_0
    move-object v3, v0

    const/4 v4, 0x0

    iput-boolean v4, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1939
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 1940
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v3, :cond_1

    .line 1941
    new-instance v3, Landroid/support/v4/app/SuperNotCalledException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " did not call through to super.onCreate()"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1944
    :cond_1
    move-object v3, v1

    if-eqz v3, :cond_3

    .line 1945
    move-object v3, v1

    const-string v4, "android:support:fragments"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 1947
    move-object v3, v2

    if-eqz v3, :cond_3

    .line 1948
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-nez v3, :cond_2

    .line 1949
    move-object v3, v0

    invoke-virtual {v3}, Landroid/support/v4/app/Fragment;->instantiateChildFragmentManager()V

    .line 1951
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v4, v2

    const/4 v5, 0x0

    invoke-virtual {v3, v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->restoreAllState(Landroid/os/Parcelable;Ljava/util/List;)V

    .line 1952
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreate()V

    .line 1955
    :cond_3
    return-void
.end method

.method performCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z
    .locals 8

    .prologue
    .line 2040
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    const/4 v4, 0x0

    move v3, v4

    .line 2041
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v4, :cond_1

    .line 2042
    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v4, :cond_0

    .line 2043
    const/4 v4, 0x1

    move v3, v4

    .line 2044
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/support/v4/app/Fragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 2046
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v4, :cond_1

    .line 2047
    move v4, v3

    move-object v5, v0

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)Z

    move-result v5

    or-int/2addr v4, v5

    move v3, v4

    .line 2050
    :cond_1
    move v4, v3

    move v0, v4

    return v0
.end method

.method performCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 1959
    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v4, :cond_0

    .line 1960
    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v4}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1962
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-virtual {v4, v5, v6, v7}, Landroid/support/v4/app/Fragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method performDestroy()V
    .locals 6

    .prologue
    .line 2178
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2179
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroy()V

    .line 2181
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2182
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 2183
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2184
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroy()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2187
    :cond_1
    return-void
.end method

.method performDestroyView()V
    .locals 6

    .prologue
    .line 2163
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2164
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchDestroyView()V

    .line 2166
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2167
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    .line 2168
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2169
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onDestroyView()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2172
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 2173
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportNextStart()V

    .line 2175
    :cond_2
    return-void
.end method

.method performLowMemory()V
    .locals 2

    .prologue
    .line 2024
    move-object v0, p0

    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onLowMemory()V

    .line 2025
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2026
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchLowMemory()V

    .line 2028
    :cond_0
    return-void
.end method

.method performOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 2068
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2069
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2070
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2071
    const/4 v2, 0x1

    move v0, v2

    .line 2080
    :goto_0
    return v0

    .line 2074
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2075
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2076
    const/4 v2, 0x1

    move v0, v2

    goto :goto_0

    .line 2080
    :cond_1
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method performOptionsMenuClosed(Landroid/view/Menu;)V
    .locals 4

    .prologue
    .line 2098
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v2, :cond_1

    .line 2099
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v2, :cond_0

    .line 2100
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2102
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v2, :cond_1

    .line 2103
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchOptionsMenuClosed(Landroid/view/Menu;)V

    .line 2106
    :cond_1
    return-void
.end method

.method performPause()V
    .locals 6

    .prologue
    .line 2119
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2120
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPause()V

    .line 2122
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2123
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onPause()V

    .line 2124
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2125
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onPause()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2128
    :cond_1
    return-void
.end method

.method performPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 6

    .prologue
    .line 2054
    move-object v0, p0

    move-object v1, p1

    const/4 v3, 0x0

    move v2, v3

    .line 2055
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHidden:Z

    if-nez v3, :cond_1

    .line 2056
    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-boolean v3, v3, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    if-eqz v3, :cond_0

    .line 2057
    const/4 v3, 0x1

    move v2, v3

    .line 2058
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 2060
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_1

    .line 2061
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v5, v1

    invoke-virtual {v4, v5}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchPrepareOptionsMenu(Landroid/view/Menu;)Z

    move-result v4

    or-int/2addr v3, v4

    move v2, v3

    .line 2064
    :cond_1
    move v3, v2

    move v0, v3

    return v0
.end method

.method performReallyStop()V
    .locals 6

    .prologue
    .line 2143
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2144
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchReallyStop()V

    .line 2146
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    if-eqz v1, :cond_2

    .line 2147
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    .line 2148
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    if-nez v1, :cond_1

    .line 2149
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCheckedForLoaderManager:Z

    .line 2150
    move-object v1, v0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    move-object v4, v0

    iget-boolean v4, v4, Landroid/support/v4/app/Fragment;->mLoadersStarted:Z

    const/4 v5, 0x0

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->getLoaderManager(Ljava/lang/String;ZZ)Landroid/support/v4/app/LoaderManagerImpl;

    move-result-object v2

    iput-object v2, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    .line 2152
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_2

    .line 2153
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentHostCallback;->getRetainLoaders()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 2154
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doRetain()V

    .line 2160
    :cond_2
    :goto_0
    return-void

    .line 2156
    :cond_3
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doStop()V

    goto :goto_0
.end method

.method performResume()V
    .locals 6

    .prologue
    .line 2000
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2001
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 2002
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2004
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2005
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onResume()V

    .line 2006
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2007
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onResume()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2010
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 2011
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchResume()V

    .line 2012
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 2014
    :cond_2
    return-void
.end method

.method performSaveInstanceState(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 2109
    move-object v0, p0

    move-object v1, p1

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Landroid/support/v4/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2110
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v3, :cond_0

    .line 2111
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v3}, Landroid/support/v4/app/FragmentManagerImpl;->saveAllState()Landroid/os/Parcelable;

    move-result-object v3

    move-object v2, v3

    .line 2112
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2113
    move-object v3, v1

    const-string v4, "android:support:fragments"

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 2116
    :cond_0
    return-void
.end method

.method performStart()V
    .locals 6

    .prologue
    .line 1981
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 1982
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->noteStateNotSaved()V

    .line 1983
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->execPendingActions()Z

    move-result v1

    .line 1985
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 1986
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onStart()V

    .line 1987
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 1988
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onStart()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1991
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_2

    .line 1992
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStart()V

    .line 1994
    :cond_2
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    if-eqz v1, :cond_3

    .line 1995
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mLoaderManager:Landroid/support/v4/app/LoaderManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/LoaderManagerImpl;->doReportStart()V

    .line 1997
    :cond_3
    return-void
.end method

.method performStop()V
    .locals 6

    .prologue
    .line 2131
    move-object v0, p0

    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    if-eqz v1, :cond_0

    .line 2132
    move-object v1, v0

    iget-object v1, v1, Landroid/support/v4/app/Fragment;->mChildFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentManagerImpl;->dispatchStop()V

    .line 2134
    :cond_0
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 2135
    move-object v1, v0

    invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->onStop()V

    .line 2136
    move-object v1, v0

    iget-boolean v1, v1, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v1, :cond_1

    .line 2137
    new-instance v1, Landroid/support/v4/app/SuperNotCalledException;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Fragment "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " did not call through to super.onStop()"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 2140
    :cond_1
    return-void
.end method

.method public registerForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1526
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1527
    return-void
.end method

.method public final requestPermissions([Ljava/lang/String;I)V
    .locals 8
    .param p1    # [Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1015
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 1016
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1018
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentHostCallback;->onRequestPermissionsFromFragment(Landroid/support/v4/app/Fragment;[Ljava/lang/String;I)V

    .line 1019
    return-void
.end method

.method final restoreViewState(Landroid/os/Bundle;)V
    .locals 7

    .prologue
    .line 467
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    if-eqz v2, :cond_0

    .line 468
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mInnerView:Landroid/view/View;

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    invoke-virtual {v2, v3}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    .line 469
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedViewState:Landroid/util/SparseArray;

    .line 471
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    .line 472
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/Fragment;->onViewStateRestored(Landroid/os/Bundle;)V

    .line 473
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mCalled:Z

    if-nez v2, :cond_1

    .line 474
    new-instance v2, Landroid/support/v4/app/SuperNotCalledException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " did not call through to super.onViewStateRestored()"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/support/v4/app/SuperNotCalledException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 477
    :cond_1
    return-void
.end method

.method public setAllowEnterTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 1780
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mAllowEnterTransitionOverlap:Ljava/lang/Boolean;

    .line 1781
    return-void
.end method

.method public setAllowReturnTransitionOverlap(Z)V
    .locals 4

    .prologue
    .line 1804
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mAllowReturnTransitionOverlap:Ljava/lang/Boolean;

    .line 1805
    return-void
.end method

.method public setArguments(Landroid/os/Bundle;)V
    .locals 6

    .prologue
    .line 550
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 551
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment already active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 553
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mArguments:Landroid/os/Bundle;

    .line 554
    return-void
.end method

.method public setEnterSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1569
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mEnterTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1570
    return-void
.end method

.method public setEnterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1594
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mEnterTransition:Ljava/lang/Object;

    .line 1595
    return-void
.end method

.method public setExitSharedElementCallback(Landroid/support/v4/app/SharedElementCallback;)V
    .locals 4

    .prologue
    .line 1580
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mExitTransitionCallback:Landroid/support/v4/app/SharedElementCallback;

    .line 1581
    return-void
.end method

.method public setExitTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1659
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mExitTransition:Ljava/lang/Object;

    .line 1660
    return-void
.end method

.method public setHasOptionsMenu(Z)V
    .locals 4

    .prologue
    .line 838
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 839
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    .line 840
    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 841
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 844
    :cond_0
    return-void
.end method

.method final setIndex(ILandroid/support/v4/app/Fragment;)V
    .locals 7

    .prologue
    .line 480
    move-object v0, p0

    move v1, p1

    move-object v2, p2

    move-object v3, v0

    move v4, v1

    iput v4, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    .line 481
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 482
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    move-object v5, v2

    iget-object v5, v5, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    .line 486
    :goto_0
    return-void

    .line 484
    :cond_0
    move-object v3, v0

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "android:fragment:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    iget v5, v5, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mWho:Ljava/lang/String;

    goto :goto_0
.end method

.method public setInitialSavedState(Landroid/support/v4/app/Fragment$SavedState;)V
    .locals 6

    .prologue
    .line 573
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 574
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Fragment already active"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 576
    :cond_0
    move-object v2, v0

    move-object v3, v1

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    if-eqz v3, :cond_1

    move-object v3, v1

    iget-object v3, v3, Landroid/support/v4/app/Fragment$SavedState;->mState:Landroid/os/Bundle;

    :goto_0
    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSavedFragmentState:Landroid/os/Bundle;

    .line 578
    return-void

    .line 576
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public setMenuVisibility(Z)V
    .locals 4

    .prologue
    .line 856
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 857
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mMenuVisible:Z

    .line 858
    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mHasMenu:Z

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->isHidden()Z

    move-result v2

    if-nez v2, :cond_0

    .line 859
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentHostCallback;->onSupportInvalidateOptionsMenu()V

    .line 862
    :cond_0
    return-void
.end method

.method public setReenterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1692
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mReenterTransition:Ljava/lang/Object;

    .line 1693
    return-void
.end method

.method public setRetainInstance(Z)V
    .locals 6

    .prologue
    .line 819
    move-object v0, p0

    move v1, p1

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mParentFragment:Landroid/support/v4/app/Fragment;

    if-eqz v2, :cond_0

    .line 820
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Can\'t retain fragements that are nested in other fragments"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 823
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mRetainInstance:Z

    .line 824
    return-void
.end method

.method public setReturnTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1625
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mReturnTransition:Ljava/lang/Object;

    .line 1626
    return-void
.end method

.method public setSharedElementEnterTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1722
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSharedElementEnterTransition:Ljava/lang/Object;

    .line 1723
    return-void
.end method

.method public setSharedElementReturnTransition(Ljava/lang/Object;)V
    .locals 4

    .prologue
    .line 1751
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Landroid/support/v4/app/Fragment;->mSharedElementReturnTransition:Ljava/lang/Object;

    .line 1752
    return-void
.end method

.method public setTargetFragment(Landroid/support/v4/app/Fragment;I)V
    .locals 5

    .prologue
    .line 592
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Landroid/support/v4/app/Fragment;->mTarget:Landroid/support/v4/app/Fragment;

    .line 593
    move-object v3, v0

    move v4, v2

    iput v4, v3, Landroid/support/v4/app/Fragment;->mTargetRequestCode:I

    .line 594
    return-void
.end method

.method public setUserVisibleHint(Z)V
    .locals 4

    .prologue
    .line 878
    move-object v0, p0

    move v1, p1

    move-object v2, v0

    iget-boolean v2, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    if-nez v2, :cond_0

    move v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mState:I

    const/4 v3, 0x4

    if-ge v2, v3, :cond_0

    .line 879
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mFragmentManager:Landroid/support/v4/app/FragmentManagerImpl;

    move-object v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManagerImpl;->performPendingDeferredStart(Landroid/support/v4/app/Fragment;)V

    .line 881
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mUserVisibleHint:Z

    .line 882
    move-object v2, v0

    move v3, v1

    if-nez v3, :cond_1

    const/4 v3, 0x1

    :goto_0
    iput-boolean v3, v2, Landroid/support/v4/app/Fragment;->mDeferStart:Z

    .line 883
    return-void

    .line 882
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public shouldShowRequestPermissionRationale(Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroid/support/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    .line 1064
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-eqz v2, :cond_0

    .line 1065
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v1

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentHostCallback;->onShouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v2

    move v0, v2

    .line 1067
    :goto_0
    return v0

    :cond_0
    const/4 v2, 0x0

    move v0, v2

    goto :goto_0
.end method

.method public startActivity(Landroid/content/Intent;)V
    .locals 7

    .prologue
    .line 913
    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v2, :cond_0

    .line 914
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    new-instance v4, Ljava/lang/StringBuilder;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Fragment "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " not attached to Activity"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 916
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v3, v0

    move-object v4, v1

    const/4 v5, -0x1

    invoke-virtual {v2, v3, v4, v5}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 917
    return-void
.end method

.method public startActivityForResult(Landroid/content/Intent;I)V
    .locals 8

    .prologue
    .line 924
    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    if-nez v3, :cond_0

    .line 925
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    new-instance v5, Ljava/lang/StringBuilder;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Fragment "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " not attached to Activity"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 927
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mHost:Landroid/support/v4/app/FragmentHostCallback;

    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-virtual {v3, v4, v5, v6}, Landroid/support/v4/app/FragmentHostCallback;->onStartActivityFromFragment(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 928
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 6

    .prologue
    .line 508
    move-object v0, p0

    new-instance v2, Ljava/lang/StringBuilder;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const/16 v4, 0x80

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(I)V

    move-object v1, v2

    .line 509
    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Landroid/support/v4/util/DebugUtils;->buildShortClassTag(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 510
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mIndex:I

    if-ltz v2, :cond_0

    .line 511
    move-object v2, v1

    const-string v3, " #"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 512
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/Fragment;->mIndex:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 514
    :cond_0
    move-object v2, v0

    iget v2, v2, Landroid/support/v4/app/Fragment;->mFragmentId:I

    if-eqz v2, :cond_1

    .line 515
    move-object v2, v1

    const-string v3, " id=0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 516
    move-object v2, v1

    move-object v3, v0

    iget v3, v3, Landroid/support/v4/app/Fragment;->mFragmentId:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 519
    move-object v2, v1

    const-string v3, " "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Landroid/support/v4/app/Fragment;->mTag:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 522
    :cond_2
    move-object v2, v1

    const/16 v3, 0x7d

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 523
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method public unregisterForContextMenu(Landroid/view/View;)V
    .locals 4

    .prologue
    .line 1537
    move-object v0, p0

    move-object v1, p1

    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/view/View;->setOnCreateContextMenuListener(Landroid/view/View$OnCreateContextMenuListener;)V

    .line 1538
    return-void
.end method
