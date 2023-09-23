.class Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;
.super Landroid/widget/ArrayAdapter;
.source "MissionsActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/MissionsActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CategoriesAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mCategories:[[I

.field private mContext:Landroid/content/Context;

.field private mGrid:Lorg/inaturalist/android/GridViewExtended;

.field final synthetic this$0:Lorg/inaturalist/android/MissionsActivity;


# direct methods
.method public constructor <init>(Lorg/inaturalist/android/MissionsActivity;Landroid/content/Context;[[ILorg/inaturalist/android/GridViewExtended;)V
    .locals 0

    .line 160
    iput-object p1, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->this$0:Lorg/inaturalist/android/MissionsActivity;

    const p1, 0x1090003

    .line 161
    invoke-direct {p0, p2, p1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I)V

    .line 163
    iput-object p2, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mContext:Landroid/content/Context;

    .line 164
    iput-object p3, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mCategories:[[I

    .line 165
    iput-object p4, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mGrid:Lorg/inaturalist/android/GridViewExtended;

    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .line 170
    iget-object v0, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mCategories:[[I

    array-length v0, v0

    return v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 4

    .line 174
    iget-object p2, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mContext:Landroid/content/Context;

    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/view/LayoutInflater;

    const/4 v0, 0x0

    const v1, 0x7f0d007d

    .line 176
    invoke-virtual {p2, v1, p3, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    const p3, 0x7f0a00a5

    .line 178
    invoke-virtual {p2, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/ImageView;

    const v1, 0x7f0a00a6

    .line 179
    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 181
    iget-object v2, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mCategories:[[I

    aget-object v2, v2, p1

    const/4 v3, 0x1

    aget v2, v2, v3

    invoke-virtual {p3, v2}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 182
    iget-object p3, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mCategories:[[I

    aget-object p3, p3, p1

    aget p3, p3, v0

    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setText(I)V

    .line 184
    iget-object p3, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mCategories:[[I

    aget-object p1, p3, p1

    const/4 p3, 0x2

    aget p1, p1, p3

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 186
    iget-object p1, p0, Lorg/inaturalist/android/MissionsActivity$CategoriesAdapter;->mGrid:Lorg/inaturalist/android/GridViewExtended;

    invoke-virtual {p1}, Lorg/inaturalist/android/GridViewExtended;->getColumnWidth()I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setMinimumHeight(I)V

    return-object p2
.end method
