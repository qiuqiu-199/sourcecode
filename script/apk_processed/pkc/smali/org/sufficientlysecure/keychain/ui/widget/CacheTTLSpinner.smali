.class public Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;
.super Landroid/support/v7/widget/AppCompatSpinner;
.source "CacheTTLSpinner.java"


# static fields
.field public static final TTL_STRINGS:[I

.field public static final TTL_TIMES:[I


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    .line 32
    new-array v1, v0, [I

    fill-array-data v1, :array_0

    sput-object v1, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    .line 38
    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_STRINGS:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0xe10
        0x15180
        0x7fffffff
    .end array-data

    :array_1
    .array-data 4
        0x7f110096
        0x7f110098
        0x7f110097
        0x7f110095
    .end array-data

    const-string v2, "M_InsDal"

    const-string v3, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;---><clinit>()V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 46
    invoke-direct {v0, v1, v2}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 47
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->initView()V

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    .line 51
    invoke-direct {v0, v1, v2, p0}, Landroid/support/v7/widget/AppCompatSpinner;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    invoke-direct {v0}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->initView()V

    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;---><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private initView()V
    .locals 12

    move-object/16 v9, p0

    .line 56
    new-instance v3, Landroid/database/MatrixCursor;

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/String;

    const-string v2, "_id"

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const-string v2, "TTL"

    const/4 v5, 0x1

    aput-object v2, v1, v5

    const-string v2, "description"

    const/4 v6, 0x2

    aput-object v2, v1, v6

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    array-length v2, v2

    invoke-direct {v3, v1, v2}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    const/4 v1, 0x0

    .line 57
    :goto_0
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_0

    .line 58
    new-array v2, v0, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v4

    sget-object v7, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    aget v7, v7, v1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v2, v5

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v8, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_STRINGS:[I

    aget v8, v8, v1

    invoke-virtual {v7, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v6

    invoke-virtual {v3, v2}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 61
    :cond_0
    new-instance v7, Landroid/support/v4/widget/SimpleCursorAdapter;

    invoke-virtual {v9}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f0c00ef

    new-array v6, v5, [Ljava/lang/String;

    const-string v0, "description"

    aput-object v0, v6, v4

    new-array v5, v5, [I

    const v0, 0x7f0902d1

    aput v0, v5, v4

    const/4 v8, 0x0

    move-object v0, v7

    move-object v4, v6

    move v6, v8

    invoke-direct/range {v0 .. v6}, Landroid/support/v4/widget/SimpleCursorAdapter;-><init>(Landroid/content/Context;ILandroid/database/Cursor;[Ljava/lang/String;[II)V

    invoke-virtual {v9, v7}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    return-void

    const-string v10, "M_InsDal"

    const-string v11, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;--->initView()V"

    invoke-static/range {v10 .. v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public getSelectedTimeToLive()I
    .locals 5

    move-object/16 v2, p0

    .line 66
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->getSelectedItemPosition()I

    move-result v0

    .line 67
    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->getAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/widget/SpinnerAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 68
    check-cast v0, Landroid/database/Cursor;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v0

    return v0

    const-string v3, "M_InsDal"

    const-string v4, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;--->getSelectedTimeToLive()I"

    invoke-static/range {v3 .. v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public setSelectedTimeToLive(I)V
    .locals 7

    move-object/16 v4, p0

    move/16 v5, p1

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 72
    :goto_0
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    array-length v2, v2

    if-ge v1, v2, :cond_3

    .line 73
    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    aget v2, v2, v1

    const/4 v3, 0x1

    if-le v5, v2, :cond_1

    sget-object v2, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->TTL_TIMES:[I

    array-length v2, v2

    sub-int/2addr v2, v3

    if-ne v1, v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    :cond_1
    :goto_1
    if-eqz v3, :cond_2

    .line 75
    invoke-virtual {v4, v1}, Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;->setSelection(I)V

    goto :goto_2

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    :goto_2
    return-void

    const-string v6, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/CacheTTLSpinner;--->setSelectedTimeToLive(I)V"

    invoke-static/range {v6 .. v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
