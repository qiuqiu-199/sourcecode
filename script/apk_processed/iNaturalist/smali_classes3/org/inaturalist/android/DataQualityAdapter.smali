.class Lorg/inaturalist/android/DataQualityAdapter;
.super Landroid/widget/ArrayAdapter;
.source "DataQualityAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Lorg/inaturalist/android/DataQualityItem;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lorg/inaturalist/android/INaturalistApp;

.field private mContext:Landroid/content/Context;

.field private final mHelper:Lorg/inaturalist/android/ActivityHelper;

.field private mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/inaturalist/android/DataQualityItem;",
            ">;"
        }
    .end annotation
.end field

.field private final mOnDataQualityActions:Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;",
            "Ljava/util/List<",
            "Lorg/inaturalist/android/DataQualityItem;",
            ">;)V"
        }
    .end annotation

    const v0, 0x1090003

    .line 52
    invoke-direct {p0, p1, v0}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 54
    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter;->mContext:Landroid/content/Context;

    .line 55
    iput-object p2, p0, Lorg/inaturalist/android/DataQualityAdapter;->mOnDataQualityActions:Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;

    .line 56
    iget-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Lorg/inaturalist/android/INaturalistApp;

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter;->mApp:Lorg/inaturalist/android/INaturalistApp;

    .line 57
    new-instance p1, Lorg/inaturalist/android/ActivityHelper;

    iget-object p2, p0, Lorg/inaturalist/android/DataQualityAdapter;->mContext:Landroid/content/Context;

    invoke-direct {p1, p2}, Lorg/inaturalist/android/ActivityHelper;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lorg/inaturalist/android/DataQualityAdapter;->mHelper:Lorg/inaturalist/android/ActivityHelper;

    .line 59
    iput-object p3, p0, Lorg/inaturalist/android/DataQualityAdapter;->mItems:Ljava/util/List;

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/DataQualityAdapter;)Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;
    .locals 0

    .line 34
    iget-object p0, p0, Lorg/inaturalist/android/DataQualityAdapter;->mOnDataQualityActions:Lorg/inaturalist/android/DataQualityAdapter$OnDataQualityActions;

    return-object p0
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/inaturalist/android/DataQualityAdapter;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    if-nez p2, :cond_0

    .line 71
    iget-object v2, v0, Lorg/inaturalist/android/DataQualityAdapter;->mContext:Landroid/content/Context;

    const-string v3, "layout_inflater"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    const v3, 0x7f0d003c

    move-object/from16 v4, p3

    .line 72
    invoke-virtual {v2, v3, v4, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object/from16 v2, p2

    .line 77
    :goto_0
    iget-object v3, v0, Lorg/inaturalist/android/DataQualityAdapter;->mItems:Ljava/util/List;

    move/from16 v4, p1

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/inaturalist/android/DataQualityItem;

    const v4, 0x7f0a015f

    .line 79
    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    const v5, 0x7f0a0238

    .line 80
    invoke-virtual {v2, v5}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const v6, 0x7f0a0047

    .line 82
    invoke-virtual {v2, v6}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    const v7, 0x7f0a0101

    .line 83
    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    const v8, 0x7f0a0048

    .line 84
    invoke-virtual {v2, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    check-cast v8, Landroid/widget/ImageView;

    const v9, 0x7f0a0102

    .line 85
    invoke-virtual {v2, v9}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v9

    check-cast v9, Landroid/widget/ImageView;

    const v10, 0x7f0a0046

    .line 86
    invoke-virtual {v2, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    const v11, 0x7f0a0100

    .line 87
    invoke-virtual {v2, v11}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v11

    check-cast v11, Landroid/view/ViewGroup;

    const v12, 0x7f0a0049

    .line 88
    invoke-virtual {v2, v12}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    check-cast v12, Landroid/widget/TextView;

    const v13, 0x7f0a0103

    .line 89
    invoke-virtual {v2, v13}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v13

    check-cast v13, Landroid/widget/TextView;

    const v14, 0x7f0a01b7

    .line 90
    invoke-virtual {v2, v14}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v14

    const/16 v15, 0x8

    .line 92
    invoke-virtual {v14, v15}, Landroid/view/View;->setVisibility(I)V

    .line 94
    iget v1, v3, Lorg/inaturalist/android/DataQualityItem;->titleResource:I

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(I)V

    .line 95
    iget v1, v3, Lorg/inaturalist/android/DataQualityItem;->iconResource:I

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    const-string v1, "#999999"

    .line 96
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v4, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 98
    iget-boolean v1, v3, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    if-nez v1, :cond_1

    .line 99
    invoke-virtual {v6, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 100
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {v7, v15}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 102
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    .line 104
    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 105
    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :goto_1
    const/4 v4, 0x4

    .line 108
    invoke-virtual {v8, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 109
    invoke-virtual {v9, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 111
    iget v4, v3, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    iget v5, v3, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    if-le v4, v5, :cond_2

    .line 112
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 113
    :cond_2
    iget v4, v3, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    iget v5, v3, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    if-le v4, v5, :cond_3

    .line 114
    invoke-virtual {v9, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 115
    :cond_3
    iget-boolean v4, v3, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    if-eqz v4, :cond_4

    .line 116
    invoke-virtual {v8, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 119
    :cond_4
    :goto_2
    iget v4, v3, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    if-lez v4, :cond_5

    iget-boolean v4, v3, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    if-eqz v4, :cond_5

    .line 120
    iget v4, v3, Lorg/inaturalist/android/DataQualityItem;->agreeCount:I

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v12, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 121
    invoke-virtual {v12, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 123
    :cond_5
    invoke-virtual {v12, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 126
    :goto_3
    iget v1, v3, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    if-lez v1, :cond_6

    iget-boolean v1, v3, Lorg/inaturalist/android/DataQualityItem;->isVotable:Z

    if-eqz v1, :cond_6

    .line 127
    iget v1, v3, Lorg/inaturalist/android/DataQualityItem;->disagreeCount:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 v1, 0x0

    .line 128
    invoke-virtual {v13, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 130
    :cond_6
    invoke-virtual {v13, v15}, Landroid/widget/TextView;->setVisibility(I)V

    .line 134
    :goto_4
    new-instance v1, Lorg/inaturalist/android/DataQualityAdapter$1;

    invoke-direct {v1, v0, v3, v14, v10}, Lorg/inaturalist/android/DataQualityAdapter$1;-><init>(Lorg/inaturalist/android/DataQualityAdapter;Lorg/inaturalist/android/DataQualityItem;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 151
    new-instance v1, Lorg/inaturalist/android/DataQualityAdapter$2;

    invoke-direct {v1, v0, v3, v14, v11}, Lorg/inaturalist/android/DataQualityAdapter$2;-><init>(Lorg/inaturalist/android/DataQualityAdapter;Lorg/inaturalist/android/DataQualityItem;Landroid/view/View;Landroid/view/ViewGroup;)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 168
    new-instance v1, Ljava/lang/Boolean;

    iget-boolean v4, v3, Lorg/inaturalist/android/DataQualityItem;->currentUserAgrees:Z

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 169
    new-instance v1, Ljava/lang/Boolean;

    iget-boolean v4, v3, Lorg/inaturalist/android/DataQualityItem;->currentUserDisagrees:Z

    invoke-direct {v1, v4}, Ljava/lang/Boolean;-><init>(Z)V

    invoke-virtual {v11, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 171
    iget-boolean v1, v3, Lorg/inaturalist/android/DataQualityItem;->currentUserAgrees:Z

    if-eqz v1, :cond_7

    const-string v1, "#808080"

    goto :goto_5

    :cond_7
    const-string v1, "#C3C3C3"

    :goto_5
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 172
    iget-boolean v1, v3, Lorg/inaturalist/android/DataQualityItem;->currentUserDisagrees:Z

    if-eqz v1, :cond_8

    const-string v1, "#808080"

    goto :goto_6

    :cond_8
    const-string v1, "#C3C3C3"

    :goto_6
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v7, v1}, Landroid/widget/ImageView;->setColorFilter(I)V

    return-object v2
.end method
