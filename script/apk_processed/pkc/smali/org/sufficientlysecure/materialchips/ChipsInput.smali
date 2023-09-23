.class public abstract Lorg/sufficientlysecure/materialchips/ChipsInput;
.super Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;
.source "ChipsInput.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/sufficientlysecure/materialchips/ChipsInput$SimpleChipsListener;,
        Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;,
        Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        ">",
        "Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;"
    }
.end annotation


# instance fields
.field private chipsAdapter:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

.field private chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter<",
            "TT;*>;"
        }
    .end annotation
.end field

.field private filterableListLayout:Landroid/view/ViewGroup;

.field private mChipsListenerList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener<",
            "TT;>;>;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

.field private mHint:Ljava/lang/String;

.field private mHintColor:Landroid/content/res/ColorStateList;

.field private mMaxRows:I

.field private mShowChipDetailed:Z

.field private mTextColor:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 58
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mMaxRows:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mShowChipDetailed:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    .line 59
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    const/4 p1, 0x0

    .line 60
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .line 64
    invoke-direct {p0, p1, p2}, Lorg/sufficientlysecure/materialchips/views/ScrollViewMaxHeight;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 v0, 0x2

    .line 44
    iput v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mMaxRows:I

    const/4 v0, 0x1

    .line 45
    iput-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mShowChipDetailed:Z

    .line 47
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    .line 65
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    .line 66
    invoke-direct {p0, p2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->init(Landroid/util/AttributeSet;)V

    return-void
.end method

.method static synthetic access$000(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    return-object p0
.end method

.method static synthetic access$100(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsAdapter:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    return-object p0
.end method

.method static synthetic access$200(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    return-object p0
.end method

.method static synthetic access$300(Lorg/sufficientlysecure/materialchips/ChipsInput;)Lorg/sufficientlysecure/materialchips/views/DropdownListView;
    .locals 0

    .line 37
    iget-object p0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    return-object p0
.end method

.method private init(Landroid/util/AttributeSet;)V
    .locals 4

    .line 76
    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lorg/sufficientlysecure/materialchips/R$layout;->chips_input:I

    invoke-static {v0, v1, p0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 78
    sget v1, Lorg/sufficientlysecure/materialchips/R$id;->chips_recycler:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 80
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->initEditText()V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 84
    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput:[I

    invoke-virtual {v2, p1, v3, v1, v1}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 91
    :try_start_0
    sget v2, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput_hint:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHint:Ljava/lang/String;

    .line 92
    sget v2, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput_hintColor:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHintColor:Landroid/content/res/ColorStateList;

    .line 93
    sget v2, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput_textColor:I

    invoke-virtual {p1, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    iput-object v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mTextColor:Landroid/content/res/ColorStateList;

    .line 94
    sget v2, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput_maxRows:I

    const/4 v3, 0x2

    invoke-virtual {p1, v2, v3}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v2

    iput v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mMaxRows:I

    .line 95
    iget v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mMaxRows:I

    mul-int/lit8 v2, v2, 0x28

    add-int/lit8 v2, v2, 0x8

    invoke-static {v2}, Lorg/sufficientlysecure/materialchips/util/ViewUtil;->dpToPx(I)I

    move-result v2

    invoke-virtual {p0, v2}, Lorg/sufficientlysecure/materialchips/ChipsInput;->setMaxHeight(I)V

    .line 97
    sget v2, Lorg/sufficientlysecure/materialchips/R$styleable;->ChipsInput_showChipDetailed:I

    invoke-virtual {p1, v2, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    iput-boolean v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mShowChipDetailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 100
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    .line 101
    throw v0

    .line 104
    :cond_0
    :goto_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    invoke-static {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;->newBuilder(Landroid/content/Context;)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;

    move-result-object p1

    .line 105
    invoke-virtual {p1, v0}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;->setOrientation(I)Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager$Builder;->build()Lcom/beloo/widget/chipslayoutmanager/ChipsLayoutManager;

    move-result-object p1

    .line 107
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 108
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {p1, v1}, Landroid/support/v7/widget/RecyclerView;->setNestedScrollingEnabled(Z)V

    .line 110
    invoke-direct {p0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->setupClickOutsideCallback()V

    return-void
.end method

.method private initEditText()V
    .locals 3

    .line 129
    new-instance v0, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    .line 130
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHintColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    .line 131
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHintColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHintTextColor(Landroid/content/res/ColorStateList;)V

    .line 132
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mTextColor:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_1

    .line 133
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 135
    :cond_1
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 138
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHint:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setHint(Ljava/lang/CharSequence;)V

    .line 139
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const v1, 0x106000d

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setBackgroundResource(I)V

    .line 141
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const v1, 0x10000006

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setImeOptions(I)V

    .line 142
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const-string v1, "nm"

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 144
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    const v1, 0x800b0

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setInputType(I)V

    .line 147
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    new-instance v1, Lorg/sufficientlysecure/materialchips/ChipsInput$1;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/materialchips/ChipsInput$1;-><init>(Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 161
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    new-instance v1, Lorg/sufficientlysecure/materialchips/ChipsInput$2;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/materialchips/ChipsInput$2;-><init>(Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 172
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    new-instance v1, Lorg/sufficientlysecure/materialchips/ChipsInput$3;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/materialchips/ChipsInput$3;-><init>(Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method private setupClickOutsideCallback()V
    .locals 4

    .line 119
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lorg/sufficientlysecure/materialchips/util/ActivityUtil;->scanForActivity(Landroid/content/Context;)Landroid/app/Activity;

    move-result-object v0

    if-nez v0, :cond_0

    .line 121
    new-instance v0, Ljava/lang/ClassCastException;

    const-string v1, "android.view.Context cannot be cast to android.app.Activity"

    invoke-direct {v0, v1}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 124
    :cond_0
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/Window;->getCallback()Landroid/view/Window$Callback;

    move-result-object v1

    .line 125
    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;

    invoke-direct {v3, v1, v0}, Lorg/sufficientlysecure/materialchips/util/ClickOutsideCallback;-><init>(Landroid/view/Window$Callback;Landroid/app/Activity;)V

    invoke-virtual {v2, v3}, Landroid/view/Window;->setCallback(Landroid/view/Window$Callback;)V

    return-void
.end method


# virtual methods
.method public addChips(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "TT;>;)V"
        }
    .end annotation

    .line 190
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsAdapter:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->addChipsProgrammatically(Ljava/util/List;)V

    return-void
.end method

.method public addChipsListener(Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener<",
            "TT;>;)V"
        }
    .end annotation

    .line 198
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public filterDropdownList(Ljava/lang/CharSequence;)V
    .locals 2

    .line 233
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/materialchips/ChipsInput$4;

    invoke-direct {v1, p0}, Lorg/sufficientlysecure/materialchips/ChipsInput$4;-><init>(Lorg/sufficientlysecure/materialchips/ChipsInput;)V

    invoke-virtual {v0, p1, v1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterListener;)V

    return-void
.end method

.method public getChipsRecyclerView()Landroid/support/v7/widget/RecyclerView;
    .locals 1

    .line 291
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    return-object v0
.end method

.method public getEditText()Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;
    .locals 1

    .line 194
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    return-object v0
.end method

.method public getHint()Ljava/lang/String;
    .locals 1

    .line 257
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHint:Ljava/lang/String;

    return-object v0
.end method

.method public getSelectedChipList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 253
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsAdapter:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;->getChipList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public isShowChipDetailed()Z
    .locals 1

    .line 283
    iget-boolean v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mShowChipDetailed:Z

    return v0
.end method

.method public onActionDone(Ljava/lang/CharSequence;)V
    .locals 2

    .line 246
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;

    .line 247
    invoke-interface {v1, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;->onActionDone(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 249
    :cond_0
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object p1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    return-void
.end method

.method public onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 202
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;->hideItem(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V

    .line 203
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;

    .line 204
    invoke-interface {v1, p1, p2}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;->onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    .line 209
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;->unhideItem(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;)V

    .line 210
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;

    .line 211
    invoke-interface {v1, p1, p2}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;->onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .locals 2

    .line 216
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mChipsListenerList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;

    .line 217
    invoke-interface {v1, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;->onTextChanged(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 220
    :cond_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->scrollToPosition(I)V

    .line 223
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    if-eqz v0, :cond_2

    .line 224
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1

    .line 225
    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterDropdownList(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 227
    :cond_1
    iget-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {p1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->fadeOut()V

    :cond_2
    :goto_1
    return-void
.end method

.method public setChipDropdownAdapter(Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter<",
            "TT;*>;)V"
        }
    .end annotation

    .line 302
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableAdapter:Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;

    .line 303
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableListLayout:Landroid/view/ViewGroup;

    if-eqz v0, :cond_0

    .line 304
    new-instance v0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableListLayout:Landroid/view/ViewGroup;

    invoke-direct {v0, v1, v2}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    goto :goto_0

    .line 306
    :cond_0
    new-instance v0, Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1, p0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    .line 308
    :goto_0
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v0, p1}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->build(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;)V

    .line 309
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsInputEditText:Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;

    iget-object v1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v0, v1}, Lorg/sufficientlysecure/materialchips/views/ChipsInputEditText;->setFilterableListView(Landroid/view/View;)V

    .line 310
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mDropdownListView:Lorg/sufficientlysecure/materialchips/views/DropdownListView;

    invoke-virtual {v0}, Lorg/sufficientlysecure/materialchips/views/DropdownListView;->getRecyclerView()Landroid/support/v7/widget/RecyclerView;

    move-result-object v0

    new-instance v1, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;

    invoke-virtual {p0}, Lorg/sufficientlysecure/materialchips/ChipsInput;->getContext()Landroid/content/Context;

    move-result-object v2

    new-instance v3, Lorg/sufficientlysecure/materialchips/ChipsInput$5;

    invoke-direct {v3, p0, p1}, Lorg/sufficientlysecure/materialchips/ChipsInput$5;-><init>(Lorg/sufficientlysecure/materialchips/ChipsInput;Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;)V

    invoke-direct {v1, v2, v3}, Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener;-><init>(Landroid/content/Context;Lorg/sufficientlysecure/materialchips/RecyclerItemClickListener$OnItemClickListener;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/RecyclerView;->addOnItemTouchListener(Landroid/support/v7/widget/RecyclerView$OnItemTouchListener;)V

    return-void
.end method

.method public setChipsAdapter(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter<",
            "TT;*>;)V"
        }
    .end annotation

    .line 114
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsAdapter:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    .line 115
    iget-object v0, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->chipsRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    return-void
.end method

.method public setFilterableListLayout(Landroid/view/ViewGroup;)V
    .locals 0

    .line 287
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->filterableListLayout:Landroid/view/ViewGroup;

    return-void
.end method

.method public setHint(Ljava/lang/String;)V
    .locals 0

    .line 261
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHint:Ljava/lang/String;

    return-void
.end method

.method public setHintColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 265
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mHintColor:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setMaxRows(I)Lorg/sufficientlysecure/materialchips/ChipsInput;
    .locals 0

    .line 273
    iput p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mMaxRows:I

    return-object p0
.end method

.method public setShowChipDetailed(Z)Lorg/sufficientlysecure/materialchips/ChipsInput;
    .locals 0

    .line 278
    iput-boolean p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mShowChipDetailed:Z

    return-object p0
.end method

.method public setTextColor(Landroid/content/res/ColorStateList;)V
    .locals 0

    .line 269
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/ChipsInput;->mTextColor:Landroid/content/res/ColorStateList;

    return-void
.end method
