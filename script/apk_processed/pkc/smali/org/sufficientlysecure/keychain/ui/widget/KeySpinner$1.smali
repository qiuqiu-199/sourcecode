.class Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;
.super Ljava/lang/Object;
.source "KeySpinner.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->initView()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    .line 67
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    return-void

    const-string v2, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;---><init>(Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;)V"

    invoke-static/range {v2 .. v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method public onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    move/16 p0, p3

    move-wide/16 p1, p4

    .line 70
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iget-object v1, v1, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

    if-eqz v1, :cond_0

    .line 71
    iget-object v1, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iget-object v2, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    invoke-virtual {v2, p0}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->getSelectedKeyId(Ljava/lang/Object;)J

    move-result-wide v1

    .line 72
    iget-object p0, v0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iget-object p0, p0, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

    invoke-interface {p0, v1, v2}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;->onKeyChanged(J)V

    :cond_0
    return-void

    const-string p3, "M_InsDal"

    const-string p4, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;--->onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V"

    invoke-static/range {p3 .. p4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method public onNothingSelected(Landroid/widget/AdapterView;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView<",
            "*>;)V"
        }
    .end annotation

    move-object/16 v2, p0

    move-object/16 v3, p1

    .line 78
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

    if-eqz v3, :cond_0

    .line 79
    iget-object v3, v2, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;->this$0:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;

    iget-object v3, v3, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner;->mListener:Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;

    const-wide/16 v0, 0x0

    invoke-interface {v3, v0, v1}, Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$OnKeyChangedListener;->onKeyChanged(J)V

    :cond_0
    return-void

    const-string v4, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/widget/KeySpinner$1;--->onNothingSelected(Landroid/widget/AdapterView;)V"

    invoke-static/range {v4 .. v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method
