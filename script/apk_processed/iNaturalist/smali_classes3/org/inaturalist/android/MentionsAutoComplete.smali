.class public Lorg/inaturalist/android/MentionsAutoComplete;
.super Ljava/lang/Object;
.source "MentionsAutoComplete.java"

# interfaces
.implements Landroid/text/TextWatcher;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/MentionsAutoComplete$UserMentionsAdapter;,
        Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;
    }
.end annotation


# static fields
.field private static final MENTION_CHAR:C = '@'

.field private static final VALID_MENTION_CHARS:Ljava/lang/String; = "[\\-a-zA-Z0-9]"


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private final mContext:Landroid/content/Context;

.field private mEditText:Landroid/widget/EditText;

.field private final mHandler:Landroid/os/Handler;

.field private final mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mLastSearch:Ljava/lang/String;

.field private final mMentionsList:Landroid/widget/ListView;

.field private final mPopupWindow:Landroid/widget/PopupWindow;

.field private mResults:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserResultsReceiver:Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;)V
    .locals 2

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 61
    iput-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mLastSearch:Ljava/lang/String;

    .line 68
    iput-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    .line 71
    iput-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    .line 72
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    .line 73
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 75
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p1, p0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 77
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHandler:Landroid/os/Handler;

    .line 80
    new-instance p1, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;

    invoke-direct {p1, p0, v0}, Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;Lorg/inaturalist/android/MentionsAutoComplete$1;)V

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mUserResultsReceiver:Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;

    .line 81
    new-instance p1, Landroid/content/IntentFilter;

    invoke-direct {p1}, Landroid/content/IntentFilter;-><init>()V

    const-string p2, "search_users_result"

    .line 82
    invoke-virtual {p1, p2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 83
    iget-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mUserResultsReceiver:Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;

    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-static {p2, p1, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeRegisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Landroid/content/Context;)V

    .line 86
    new-instance p1, Landroid/widget/PopupWindow;

    iget-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/PopupWindow;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    .line 87
    new-instance p1, Landroid/widget/ListView;

    iget-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Landroid/widget/ListView;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    .line 88
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 89
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 91
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setFocusable(Z)V

    .line 92
    sget p1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 p2, 0x15

    if-lt p1, p2, :cond_0

    .line 93
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    const/high16 p2, 0x40a00000    # 5.0f

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setElevation(F)V

    .line 95
    :cond_0
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    new-instance p2, Landroid/graphics/drawable/ColorDrawable;

    const-string v0, "#ffffff"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-direct {p2, v0}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    invoke-virtual {p1, p2}, Landroid/widget/PopupWindow;->setContentView(Landroid/view/View;)V

    .line 99
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    iget-object p2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-void
.end method

.method static synthetic access$100(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/lang/String;)V
    .locals 0

    .line 52
    invoke-direct {p0, p1}, Lorg/inaturalist/android/MentionsAutoComplete;->performSearch(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lorg/inaturalist/android/MentionsAutoComplete;)Ljava/lang/String;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mLastSearch:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$302(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/util/ArrayList;)Ljava/util/ArrayList;
    .locals 0

    .line 52
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    return-object p1
.end method

.method static synthetic access$400(Lorg/inaturalist/android/MentionsAutoComplete;)V
    .locals 0

    .line 52
    invoke-direct {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->refreshViewState()V

    return-void
.end method

.method static synthetic access$500(Lorg/inaturalist/android/MentionsAutoComplete;)Lorg/inaturalist/android/INaturalistApp;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mApp:Lorg/inaturalist/android/INaturalistApp;

    return-object p0
.end method

.method static synthetic access$600(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/EditText;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    return-object p0
.end method

.method static synthetic access$700(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/ListView;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    return-object p0
.end method

.method static synthetic access$800(Lorg/inaturalist/android/MentionsAutoComplete;)Lorg/inaturalist/android/ActivityHelper;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    return-object p0
.end method

.method static synthetic access$900(Lorg/inaturalist/android/MentionsAutoComplete;)Landroid/widget/PopupWindow;
    .locals 0

    .line 52
    iget-object p0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    return-object p0
.end method

.method private getMentionBoundaries()[I
    .locals 10

    .line 115
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 117
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    .line 119
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    const/4 v4, 0x2

    if-eqz v3, :cond_8

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    if-nez v3, :cond_0

    goto :goto_4

    .line 123
    :cond_0
    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v3

    sub-int/2addr v3, v2

    :goto_0
    const/4 v5, -0x1

    if-ltz v3, :cond_3

    add-int/lit8 v6, v3, 0x1

    .line 124
    invoke-virtual {v0, v3, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 126
    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x40

    if-ne v7, v8, :cond_1

    goto :goto_1

    :cond_1
    const-string v5, "[\\-a-zA-Z0-9]"

    .line 130
    invoke-virtual {v6, v5}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 132
    new-array v0, v4, [I

    fill-array-data v0, :array_0

    return-object v0

    :cond_2
    add-int/lit8 v3, v3, -0x1

    goto :goto_0

    :cond_3
    const/4 v3, -0x1

    :goto_1
    if-ne v3, v5, :cond_4

    .line 138
    new-array v0, v4, [I

    fill-array-data v0, :array_1

    return-object v0

    :cond_4
    add-int/lit8 v5, v3, 0x1

    move v6, v5

    .line 142
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v6, v7, :cond_6

    add-int/lit8 v7, v6, 0x1

    .line 143
    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    const-string v9, "[\\-a-zA-Z0-9]"

    .line 144
    invoke-virtual {v8, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_5

    add-int/lit8 v1, v6, -0x1

    goto :goto_3

    :cond_5
    move v6, v7

    goto :goto_2

    :cond_6
    :goto_3
    sub-int v0, v1, v3

    if-ge v0, v2, :cond_7

    .line 153
    new-array v0, v4, [I

    fill-array-data v0, :array_2

    return-object v0

    .line 157
    :cond_7
    new-array v0, v4, [I

    const/4 v3, 0x0

    aput v5, v0, v3

    aput v1, v0, v2

    return-object v0

    .line 120
    :cond_8
    :goto_4
    new-array v0, v4, [I

    fill-array-data v0, :array_3

    return-object v0

    nop

    :array_0
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 4
        -0x1
        -0x1
    .end array-data

    :array_3
    .array-data 4
        -0x1
        -0x1
    .end array-data
.end method

.method private performSearch(Ljava/lang/String;)V
    .locals 5

    .line 197
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mLastSearch:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 200
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 205
    :cond_1
    new-instance v0, Landroid/content/Intent;

    sget-object v1, Lorg/inaturalist/android/INaturalistService;->ACTION_SEARCH_USERS:Ljava/lang/String;

    const/4 v2, 0x0

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    const-class v4, Lorg/inaturalist/android/INaturalistService;

    invoke-direct {v0, v1, v2, v3, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "query"

    .line 206
    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string p1, "page_number"

    const/4 v1, 0x1

    .line 207
    invoke-virtual {v0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 208
    iget-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-static {p1, v0}, Landroid/support/v4/content/ContextCompat;->startForegroundService(Landroid/content/Context;Landroid/content/Intent;)V

    return-void
.end method

.method private refreshViewState()V
    .locals 6

    .line 295
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    .line 300
    :cond_0
    new-instance v0, Lorg/inaturalist/android/MentionsAutoComplete$UserMentionsAdapter;

    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    invoke-direct {v0, p0, v1, v2}, Lorg/inaturalist/android/MentionsAutoComplete$UserMentionsAdapter;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;Landroid/content/Context;Ljava/util/List;)V

    .line 301
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    invoke-virtual {v1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 303
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 304
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    check-cast v1, Landroid/app/Activity;

    invoke-virtual {v1}, Landroid/app/Activity;->getWindowManager()Landroid/view/WindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 305
    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 306
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Lorg/inaturalist/android/ActivityHelper;->dpToPx(I)F

    move-result v2

    float-to-int v2, v2

    sub-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/widget/PopupWindow;->setWidth(I)V

    .line 308
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getSelectionStart()I

    move-result v0

    .line 309
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getLayout()Landroid/text/Layout;

    move-result-object v1

    .line 310
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineForOffset(I)I

    move-result v0

    .line 311
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineBaseline(I)I

    move-result v2

    .line 312
    invoke-virtual {v1, v0}, Landroid/text/Layout;->getLineAscent(I)I

    move-result v0

    add-int/2addr v2, v0

    int-to-float v0, v2

    .line 315
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 316
    iget-object v2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2, v1}, Landroid/widget/EditText;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 318
    iget-object v2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getHeight()I

    move-result v3

    sub-int/2addr v1, v3

    int-to-float v1, v1

    add-float/2addr v1, v0

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getScrollY()I

    move-result v3

    int-to-float v3, v3

    sub-float/2addr v1, v3

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    const/16 v4, 0x46

    invoke-virtual {v3, v4}, Lorg/inaturalist/android/ActivityHelper;->dpToPx(I)F

    move-result v3

    sub-float/2addr v1, v3

    float-to-int v1, v1

    invoke-virtual {v2, v1}, Landroid/widget/PopupWindow;->setHeight(I)V

    .line 320
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/PopupWindow;->setClippingEnabled(Z)V

    .line 322
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    iget-object v3, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    float-to-int v4, v0

    iget-object v5, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getScrollY()I

    move-result v5

    sub-int/2addr v4, v5

    invoke-virtual {v1, v3, v2, v4}, Landroid/widget/PopupWindow;->showAsDropDown(Landroid/view/View;II)V

    .line 324
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    new-instance v2, Lorg/inaturalist/android/MentionsAutoComplete$2;

    invoke-direct {v2, p0}, Lorg/inaturalist/android/MentionsAutoComplete$2;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;)V

    const-wide/16 v3, 0xa

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 332
    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mMentionsList:Landroid/widget/ListView;

    new-instance v2, Lorg/inaturalist/android/MentionsAutoComplete$3;

    invoke-direct {v2, p0, v0}, Lorg/inaturalist/android/MentionsAutoComplete$3;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;F)V

    invoke-static {v1, v2}, Lorg/inaturalist/android/ActivityHelper;->willListScroll(Landroid/widget/ListView;Lorg/inaturalist/android/ActivityHelper$isListScrollable;)V

    return-void

    .line 296
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mPopupWindow:Landroid/widget/PopupWindow;

    invoke-virtual {v0}, Landroid/widget/PopupWindow;->dismiss()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 4

    .line 172
    invoke-virtual {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->dismiss()V

    .line 174
    invoke-direct {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->getMentionBoundaries()[I

    move-result-object p1

    const/4 v0, 0x0

    .line 176
    aget v1, p1, v0

    const/4 v2, -0x1

    if-eq v1, v2, :cond_1

    const/4 v1, 0x1

    aget v3, p1, v1

    if-ne v3, v2, :cond_0

    goto :goto_0

    .line 183
    :cond_0
    iget-object v2, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 184
    aget v0, p1, v0

    aget p1, p1, v1

    add-int/2addr p1, v1

    invoke-virtual {v2, v0, p1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 186
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mLastSearch:Ljava/lang/String;

    .line 188
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mHandler:Landroid/os/Handler;

    new-instance v1, Lorg/inaturalist/android/MentionsAutoComplete$1;

    invoke-direct {v1, p0, p1}, Lorg/inaturalist/android/MentionsAutoComplete$1;-><init>(Lorg/inaturalist/android/MentionsAutoComplete;Ljava/lang/String;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void

    :cond_1
    :goto_0
    const/4 p1, 0x0

    .line 178
    iput-object p1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mLastSearch:Ljava/lang/String;

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public dismiss()V
    .locals 1

    const/4 v0, 0x0

    .line 108
    iput-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mResults:Ljava/util/ArrayList;

    .line 109
    invoke-direct {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->refreshViewState()V

    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .line 213
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/json/JSONObject;

    const-string p2, "login"

    .line 214
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 216
    invoke-direct {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->getMentionBoundaries()[I

    move-result-object p2

    const/4 p3, 0x0

    .line 218
    aget p4, p2, p3

    const/4 p5, -0x1

    if-eq p4, p5, :cond_1

    const/4 p4, 0x1

    aget v0, p2, p4

    if-ne v0, p5, :cond_0

    goto :goto_0

    .line 224
    :cond_0
    iget-object p5, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {p5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p5

    invoke-virtual {p5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p5

    .line 225
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 226
    aget v1, p2, p3

    invoke-virtual {p5, p3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    .line 228
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 229
    aget v1, p2, p4

    add-int/2addr v1, p4

    invoke-virtual {p5, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 231
    iget-object p5, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 232
    iget-object p5, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    aget p2, p2, p3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    add-int/2addr p2, p1

    add-int/2addr p2, p4

    invoke-virtual {p5, p2}, Landroid/widget/EditText;->setSelection(I)V

    .line 234
    invoke-virtual {p0}, Lorg/inaturalist/android/MentionsAutoComplete;->dismiss()V

    return-void

    :cond_1
    :goto_0
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public remove()V
    .locals 2

    .line 103
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mUserResultsReceiver:Lorg/inaturalist/android/MentionsAutoComplete$UserSearchReceiver;

    iget-object v1, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mContext:Landroid/content/Context;

    invoke-static {v0, v1}, Lorg/inaturalist/android/BaseFragmentActivity;->safeUnregisterReceiver(Landroid/content/BroadcastReceiver;Landroid/content/Context;)V

    .line 104
    iget-object v0, p0, Lorg/inaturalist/android/MentionsAutoComplete;->mEditText:Landroid/widget/EditText;

    invoke-virtual {v0, p0}, Landroid/widget/EditText;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method
