.class public Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;
.super Landroid/support/v4/app/Fragment;
.source "RecyclerFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Landroid/support/v7/widget/RecyclerView$Adapter;",
        ">",
        "Landroid/support/v4/app/Fragment;"
    }
.end annotation


# static fields
.field protected static final INTERNAL_EMPTY_VIEW_ID:I = 0x1020004

.field protected static final INTERNAL_LIST_CONTAINER_ID:I = 0x1020018

.field protected static final INTERNAL_LIST_VIEW_ID:I = 0x102000a

.field protected static final INTERNAL_PROGRESS_CONTAINER_ID:I = 0x102000d


# instance fields
.field private adapter:Landroid/support/v7/widget/RecyclerView$Adapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TA;"
        }
    .end annotation
.end field

.field private final dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

.field private emptyView:Landroid/view/View;

.field private final handler:Landroid/os/Handler;

.field private layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

.field private listContainer:Landroid/view/View;

.field private listShown:Z

.field private listView:Landroid/support/v7/widget/RecyclerView;

.field private observerRegistered:Z

.field private progressContainer:Landroid/view/View;

.field private final requestFocus:Ljava/lang/Runnable;

.field private final scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;


# direct methods
.method public constructor <init>()V
    .locals 4

    move-object/16 v1, p0

    .line 102
    invoke-direct {v1}, Landroid/support/v4/app/Fragment;-><init>()V

    .line 51
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->handler:Landroid/os/Handler;

    .line 52
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$1;-><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->requestFocus:Ljava/lang/Runnable;

    const/4 v0, 0x0

    .line 59
    iput-boolean v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->observerRegistered:Z

    .line 60
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$2;-><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    .line 80
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment$3;-><init>(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V

    iput-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    return-void

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;---><init>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)Landroid/support/v7/widget/RecyclerView;
    .locals 0

    .line 45
    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;)V
    .locals 0

    .line 45
    invoke-direct {p0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->checkDataSet()V

    return-void
.end method

.method private checkDataSet()V
    .locals 7

    move-object/16 v4, p0

    .line 269
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getItemCount()I

    move-result v0

    invoke-virtual {v4, v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->treatAsEmpty(I)Z

    move-result v0

    .line 271
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Dataset change detected! Count: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 272
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getItemCount()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", Empty: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v3, v2, [Ljava/lang/Object;

    .line 271
    invoke-static {v1, v3}, Ltimber/log/Timber;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 274
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    if-eqz v1, :cond_1

    .line 275
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/16 v2, 0x8

    :goto_0
    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void

    const-string v5, "M_InsDal"

    const-string v6, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->checkDataSet()V"

    invoke-static/range {v5 .. v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private ensureList()V
    .locals 6

    move-object/16 v3, p0

    .line 359
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    return-void

    .line 363
    :cond_0
    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getView()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_1

    .line 365
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Content view not yet created"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 368
    :cond_1
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-eqz v1, :cond_2

    .line 369
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    goto :goto_0

    :cond_2
    const v1, 0x1020004

    .line 371
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    .line 372
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 373
    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    :cond_3
    const v1, 0x102000d

    .line 376
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    const v1, 0x1020018

    .line 377
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    const v1, 0x102000a

    .line 379
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 380
    instance-of v1, v0, Landroid/support/v7/widget/RecyclerView;

    if-nez v1, :cond_5

    if-nez v0, :cond_4

    .line 382
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your content must have a RecyclerView whose id attribute is \'android.R.id.list\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 386
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Content has view with id attribute \'android.R.id.list\' that is not a ListView class"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 391
    :cond_5
    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    .line 394
    :goto_0
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    const/4 v1, 0x0

    if-eqz v0, :cond_6

    .line 395
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 396
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 397
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_6
    const/4 v0, 0x1

    .line 400
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listShown:Z

    .line 401
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->isFixedSize()Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 402
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->addOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 404
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_7

    .line 405
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 406
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 407
    invoke-virtual {v3, v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    goto :goto_1

    .line 411
    :cond_7
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    if-eqz v0, :cond_8

    const/4 v0, 0x0

    .line 412
    invoke-direct {v3, v0, v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setListShown(ZZ)V

    .line 416
    :cond_8
    :goto_1
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->handler:Landroid/os/Handler;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->requestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->ensureList()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private registerObserver()V
    .locals 5

    move-object/16 v2, p0

    .line 255
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->observerRegistered:Z

    if-nez v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 256
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->registerAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x1

    .line 257
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->observerRegistered:Z

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->registerObserver()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setListShown(ZZ)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    move/16 v6, p2

    .line 317
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->ensureList()V

    .line 319
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    if-nez v0, :cond_0

    .line 320
    new-instance v5, Ljava/lang/IllegalStateException;

    const-string v6, "Can\'t be used with a custom content view"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 322
    :cond_0
    iget-boolean v0, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listShown:Z

    if-ne v0, v5, :cond_1

    return-void

    .line 325
    :cond_1
    iput-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listShown:Z

    const/4 v0, 0x0

    const/16 v1, 0x8

    const/high16 v2, 0x10a0000

    const v3, 0x10a0001

    if-eqz v5, :cond_3

    if-eqz v6, :cond_2

    .line 328
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    .line 329
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 328
    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 330
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    .line 331
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 330
    invoke-static {v6, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    .line 333
    :cond_2
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 334
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 336
    :goto_0
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 337
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    :cond_3
    if-eqz v6, :cond_4

    .line 340
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    .line 341
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 340
    invoke-static {v6, v2}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 342
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    .line 343
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    .line 342
    invoke-static {v6, v3}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_1

    .line 345
    :cond_4
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 346
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    invoke-virtual {v5}, Landroid/view/View;->clearAnimation()V

    .line 348
    :goto_1
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    invoke-virtual {v5, v0}, Landroid/view/View;->setVisibility(I)V

    .line 349
    iget-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    :goto_2
    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->setListShown(ZZ)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private unregisterObserver()V
    .locals 5

    move-object/16 v2, p0

    .line 262
    iget-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->observerRegistered:Z

    if-eqz v0, :cond_0

    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    iget-object v1, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->dataObserver:Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView$Adapter;->unregisterAdapterDataObserver(Landroid/support/v7/widget/RecyclerView$AdapterDataObserver;)V

    const/4 v0, 0x0

    .line 264
    iput-boolean v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->observerRegistered:Z

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->unregisterObserver()V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TA;"
        }
    .end annotation

    move-object/16 v1, p0

    .line 354
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getHandler()Landroid/os/Handler;
    .locals 4

    move-object/16 v1, p0

    .line 191
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->handler:Landroid/os/Handler;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getHandler()Landroid/os/Handler;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemCount()I
    .locals 4

    move-object/16 v1, p0

    .line 231
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 232
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getItemCount()I"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getItemId(I)J
    .locals 5

    move-object/16 v2, p0

    move/16 v3, p1

    .line 238
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, v2, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    invoke-virtual {v0, v3}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemId(I)J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, -0x1

    return-wide v0

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getItemId(I)J"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;
    .locals 4

    move-object/16 v1, p0

    .line 250
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->ensureList()V

    .line 251
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public getRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 4

    move-object/16 v1, p0

    .line 245
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->ensureList()V

    .line 246
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    return-object v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->getRecyclerView()Landroid/support/v7/widget/RecyclerView;"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public hideList(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/4 v0, 0x0

    .line 299
    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setListShown(ZZ)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->hideList(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected isFixedSize()Z
    .locals 4

    move-object/16 v1, p0

    const/4 v0, 0x1

    return v0

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->isFixedSize()Z"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    move-object/16 v5, p0

    move-object/16 v6, p1

    move-object/16 v7, p2

    move-object/16 p0, p3

    .line 108
    invoke-virtual {v5}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 109
    new-instance v7, Landroid/widget/FrameLayout;

    invoke-direct {v7, v6}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 111
    new-instance p0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v0, 0x102000d

    .line 112
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    const/4 v0, 0x1

    .line 113
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const/16 v1, 0x11

    .line 114
    invoke-virtual {p0, v1}, Landroid/widget/LinearLayout;->setGravity(I)V

    const/16 v2, 0x8

    .line 115
    invoke-virtual {p0, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 117
    new-instance v2, Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    const v4, 0x101007a

    invoke-direct {v2, v6, v3, v4}, Landroid/widget/ProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 120
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v4, -0x2

    invoke-direct {v3, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 123
    new-instance v2, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v3, -0x1

    invoke-direct {v2, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 127
    new-instance p0, Landroid/widget/LinearLayout;

    invoke-direct {p0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 128
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setOrientation(I)V

    const v0, 0x1020018

    .line 129
    invoke-virtual {p0, v0}, Landroid/widget/LinearLayout;->setId(I)V

    .line 131
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, v6}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    const v2, 0x7f090181

    .line 132
    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setId(I)V

    .line 134
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 137
    new-instance v0, Landroid/widget/TextView;

    invoke-direct {v0, v6}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    const v2, 0x1020004

    .line 138
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setId(I)V

    .line 139
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setGravity(I)V

    .line 141
    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 144
    new-instance v0, Landroid/support/v7/widget/RecyclerView;

    invoke-direct {v0, v6}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    const v6, 0x102000a

    .line 145
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setId(I)V

    const/4 v6, 0x0

    .line 147
    invoke-virtual {v0, v6}, Landroid/support/v7/widget/RecyclerView;->setClipToPadding(Z)V

    .line 149
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {p0, v0, v6}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 152
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, p0, v6}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 156
    new-instance v6, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v6, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v7, v6}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-object v7

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onDestroy()V
    .locals 3

    move-object/16 v0, p0

    .line 187
    invoke-super {v0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    const-string v1, "M_InsDal"

    const-string v2, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onDestroy()V"

    invoke-static/range {v1 .. v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onDestroyView()V
    .locals 6

    move-object/16 v3, p0

    .line 170
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->handler:Landroid/os/Handler;

    iget-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->requestFocus:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 171
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 172
    iget-object v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->scrollListener:Landroid/support/v7/widget/RecyclerView$OnScrollListener;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->removeOnScrollListener(Landroid/support/v7/widget/RecyclerView$OnScrollListener;)V

    .line 174
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    const/4 v0, 0x0

    .line 175
    iput-boolean v0, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listShown:Z

    .line 176
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listContainer:Landroid/view/View;

    .line 177
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 178
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    .line 179
    iput-object v1, v3, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->progressContainer:Landroid/view/View;

    .line 181
    invoke-super {v3}, Landroid/support/v4/app/Fragment;->onDestroyView()V

    return-void

    const-string v4, "M_InsDal"

    const-string v5, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onDestroyView()V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onScrollStateChanged(I)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onScrollStateChanged(I)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onScrolled(II)V
    .locals 3

    move-object/16 v0, p0

    move/16 v1, p1

    move/16 v2, p2

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onScrolled(II)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 164
    invoke-super {v0, v1, v2}, Landroid/support/v4/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->ensureList()V

    return-void
.end method

.method public setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TA;)V"
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    .line 203
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->unregisterObserver()V

    .line 205
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 206
    :goto_0
    iput-object v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->adapter:Landroid/support/v7/widget/RecyclerView$Adapter;

    .line 208
    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->registerObserver()V

    .line 210
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v3, :cond_2

    .line 211
    iget-object v3, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v3, v5}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 213
    iget-boolean v5, v4, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listShown:Z

    if-nez v5, :cond_2

    if-nez v0, :cond_2

    .line 214
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getView()Landroid/view/View;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 215
    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->getView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v5

    if-eqz v5, :cond_1

    const/4 v1, 0x1

    :cond_1
    invoke-direct {v4, v2, v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setListShown(ZZ)V

    :cond_2
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setEmptyText(Ljava/lang/String;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 307
    invoke-direct {v1}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->ensureList()V

    .line 308
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    instance-of v0, v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    .line 309
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->emptyView:Landroid/view/View;

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    const-string v2, "Cannot set empty text on a view that is nullor not an instance of android.view.View!"

    const/4 v0, 0x0

    .line 311
    new-array v0, v0, [Ljava/lang/Object;

    invoke-static {v2, v0}, Ltimber/log/Timber;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    :goto_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->setEmptyText(Ljava/lang/String;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V
    .locals 4

    move-object/16 v1, p0

    move-object/16 v2, p1

    .line 221
    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$LayoutManager;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    .line 222
    iput-object v2, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->layoutManager:Landroid/support/v7/widget/RecyclerView$LayoutManager;

    .line 224
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    if-eqz v0, :cond_0

    .line 225
    iget-object v0, v1, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->listView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    :cond_0
    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public showList(Z)V
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/4 v0, 0x1

    .line 303
    invoke-direct {v1, v0, v2}, Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;->setListShown(ZZ)V

    return-void

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->showList(Z)V"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected treatAsEmpty(I)Z
    .locals 4

    move-object/16 v1, p0

    move/16 v2, p1

    const/4 v0, 0x1

    if-ge v2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    const-string v3, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/base/RecyclerFragment;--->treatAsEmpty(I)Z"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
