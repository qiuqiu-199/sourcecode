.class Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;
.super Ljava/lang/Object;
.source "ObservationCursorAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/inaturalist/android/ObservationCursorAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ViewHolder"
.end annotation


# instance fields
.field public commentCount:Landroid/widget/TextView;

.field public commentIcon:Landroid/widget/ImageView;

.field public commentIdContainer:Landroid/view/ViewGroup;

.field public dateObserved:Landroid/widget/TextView;

.field public hasErrors:Z

.field public idCount:Landroid/widget/TextView;

.field public idIcon:Landroid/widget/ImageView;

.field public isBeingSynced:Z

.field public leftContainer:Landroid/view/ViewGroup;

.field public locationIcon:Landroid/widget/ImageView;

.field public obsIconicImage:Landroid/widget/ImageView;

.field public obsId:J

.field public obsImage:Landroid/widget/ImageView;

.field public observation:Lorg/inaturalist/android/Observation;

.field public photoFilename:Ljava/lang/String;

.field public placeGuess:Landroid/widget/TextView;

.field public progress:Landroid/view/View;

.field public progressInner:Landroid/view/View;

.field public speciesGuess:Landroid/widget/TextView;

.field public syncNeeded:Ljava/lang/Boolean;

.field public updatedAt:Ljava/lang/Long;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 2

    .line 337
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 338
    iput-wide v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsId:J

    const v0, 0x7f0a0268

    .line 340
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsImage:Landroid/widget/ImageView;

    const v0, 0x7f0a0262

    .line 341
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->obsIconicImage:Landroid/widget/ImageView;

    const v0, 0x7f0a034a

    .line 342
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->speciesGuess:Landroid/widget/TextView;

    const v0, 0x7f0a00e7

    .line 343
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->dateObserved:Landroid/widget/TextView;

    const v0, 0x7f0a00c7

    .line 344
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentIdContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a01aa

    .line 345
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->leftContainer:Landroid/view/ViewGroup;

    const v0, 0x7f0a00ca

    .line 347
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a0178

    .line 348
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->idIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a00c6

    .line 349
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->commentCount:Landroid/widget/TextView;

    const v0, 0x7f0a0173

    .line 350
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->idCount:Landroid/widget/TextView;

    const v0, 0x7f0a02a4

    .line 352
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->placeGuess:Landroid/widget/TextView;

    const v0, 0x7f0a01d8

    .line 353
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->locationIcon:Landroid/widget/ImageView;

    const v0, 0x7f0a02ad

    .line 355
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->progress:Landroid/view/View;

    const v0, 0x7f0a02b2

    .line 356
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lorg/inaturalist/android/ObservationCursorAdapter$ViewHolder;->progressInner:Landroid/view/View;

    return-void
.end method
