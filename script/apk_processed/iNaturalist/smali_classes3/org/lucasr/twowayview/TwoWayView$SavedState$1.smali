.class final Lorg/lucasr/twowayview/TwoWayView$SavedState$1;
.super Ljava/lang/Object;
.source "TwoWayView.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/lucasr/twowayview/TwoWayView$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lorg/lucasr/twowayview/TwoWayView$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 6453
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 0

    .line 6453
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lorg/lucasr/twowayview/TwoWayView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public createFromParcel(Landroid/os/Parcel;)Lorg/lucasr/twowayview/TwoWayView$SavedState;
    .locals 2

    .line 6456
    new-instance v0, Lorg/lucasr/twowayview/TwoWayView$SavedState;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lorg/lucasr/twowayview/TwoWayView$SavedState;-><init>(Landroid/os/Parcel;Lorg/lucasr/twowayview/TwoWayView$1;)V

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    .line 6453
    invoke-virtual {p0, p1}, Lorg/lucasr/twowayview/TwoWayView$SavedState$1;->newArray(I)[Lorg/lucasr/twowayview/TwoWayView$SavedState;

    move-result-object p1

    return-object p1
.end method

.method public newArray(I)[Lorg/lucasr/twowayview/TwoWayView$SavedState;
    .locals 0

    .line 6461
    new-array p1, p1, [Lorg/lucasr/twowayview/TwoWayView$SavedState;

    return-object p1
.end method
