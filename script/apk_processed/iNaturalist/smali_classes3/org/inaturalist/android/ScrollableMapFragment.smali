.class public Lorg/inaturalist/android/ScrollableMapFragment;
.super Lcom/google/android/gms/maps/SupportMapFragment;
.source "ScrollableMapFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;,
        Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;
    }
.end annotation


# instance fields
.field private mListener:Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 16
    invoke-direct {p0}, Lcom/google/android/gms/maps/SupportMapFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lorg/inaturalist/android/ScrollableMapFragment;)Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;
    .locals 0

    .line 16
    iget-object p0, p0, Lorg/inaturalist/android/ScrollableMapFragment;->mListener:Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;

    return-object p0
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .line 21
    invoke-super {p0, p1, p2, p3}, Lcom/google/android/gms/maps/SupportMapFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p1

    .line 23
    new-instance p2, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;

    invoke-virtual {p0}, Lorg/inaturalist/android/ScrollableMapFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object p3

    invoke-direct {p2, p0, p3}, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;-><init>(Lorg/inaturalist/android/ScrollableMapFragment;Landroid/content/Context;)V

    .line 24
    invoke-virtual {p0}, Lorg/inaturalist/android/ScrollableMapFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    const v0, 0x106000d

    invoke-virtual {p3, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result p3

    invoke-virtual {p2, p3}, Lorg/inaturalist/android/ScrollableMapFragment$TouchableWrapper;->setBackgroundColor(I)V

    .line 26
    move-object p3, p1

    check-cast p3, Landroid/view/ViewGroup;

    new-instance v0, Landroid/view/ViewGroup$LayoutParams;

    const/4 v1, -0x1

    invoke-direct {v0, v1, v1}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {p3, p2, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object p1
.end method

.method public setListener(Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;)V
    .locals 0

    .line 33
    iput-object p1, p0, Lorg/inaturalist/android/ScrollableMapFragment;->mListener:Lorg/inaturalist/android/ScrollableMapFragment$OnTouchListener;

    return-void
.end method
