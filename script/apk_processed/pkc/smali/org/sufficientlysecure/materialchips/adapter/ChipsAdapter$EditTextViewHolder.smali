.class public Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "ChipsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "EditTextViewHolder"
.end annotation


# instance fields
.field private final editText:Landroid/widget/EditText;

.field final synthetic this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;Landroid/view/View;)V
    .locals 0

    .line 289
    iput-object p1, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;->this$0:Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter;

    .line 290
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 291
    check-cast p2, Landroid/widget/EditText;

    iput-object p2, p0, Lorg/sufficientlysecure/materialchips/adapter/ChipsAdapter$EditTextViewHolder;->editText:Landroid/widget/EditText;

    return-void
.end method
