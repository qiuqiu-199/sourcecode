.class public interface abstract Lorg/sufficientlysecure/materialchips/ChipsInput$ChipsListener;
.super Ljava/lang/Object;
.source "ChipsInput.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/ChipsInput;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ChipsListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# virtual methods
.method public abstract onActionDone(Ljava/lang/CharSequence;)V
.end method

.method public abstract onChipAdded(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract onChipRemoved(Lorg/sufficientlysecure/materialchips/adapter/FilterableAdapter$FilterableItem;I)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;I)V"
        }
    .end annotation
.end method

.method public abstract onTextChanged(Ljava/lang/CharSequence;)V
.end method
