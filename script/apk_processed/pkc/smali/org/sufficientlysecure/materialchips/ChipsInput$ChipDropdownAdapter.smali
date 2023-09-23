.class public abstract Lorg/sufficientlysecure/materialchips/ChipsInput$ChipDropdownAdapter;
.super Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;
.source "ChipsInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "ChipDropdownAdapter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        "VH:",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter<",
        "TT;TVH;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+TT;>;)V"
        }
    .end annotation

    .line 297
    invoke-direct {p0, p1}, Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter;-><init>(Ljava/util/List;)V

    return-void
.end method
