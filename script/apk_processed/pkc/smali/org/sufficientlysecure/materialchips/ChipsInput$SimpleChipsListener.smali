.class public abstract Lorg/sufficientlysecure/materialchips/ChipsInput$SimpleChipsListener;
.super Ljava/lang/Object;
.source "ChipsInput.java"

# interfaces
.implements Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "SimpleChipsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 326
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActionDone(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method

.method public onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;)V
    .locals 0

    return-void
.end method
