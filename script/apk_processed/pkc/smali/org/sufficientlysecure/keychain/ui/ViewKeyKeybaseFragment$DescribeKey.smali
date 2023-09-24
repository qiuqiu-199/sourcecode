.class Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;
.super Landroid/os/AsyncTask;
.source "ViewKeyKeybaseFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DescribeKey"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask<",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;",
        ">;"
    }
.end annotation


# instance fields
.field mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

.field final synthetic this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;


# direct methods
.method constructor <init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V
    .locals 3

    move-object/16 v0, p0

    move-object/16 v1, p1

    move-object/16 v2, p2

    .line 159
    iput-object v1, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-direct {v0}, Landroid/os/AsyncTask;-><init>()V

    .line 160
    iput-object v2, v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    return-void

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;---><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Lorg/sufficientlysecure/keychain/util/ParcelableProxy;)V"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private appendProofLinks(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/textuality/keybase/lib/Proof;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/textuality/keybase/lib/KeybaseException;
        }
    .end annotation

    move-object/16 v4, p0

    move-object/16 v5, p1

    move-object/16 v6, p2

    move-object/16 p0, p3

    .line 221
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 222
    invoke-virtual {p0}, Lcom/textuality/keybase/lib/Proof;->getHandle()Ljava/lang/String;

    move-result-object v1

    .line 223
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 224
    new-instance v2, Landroid/text/style/URLSpan;

    invoke-virtual {p0}, Lcom/textuality/keybase/lib/Proof;->getServiceUrl()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    add-int/2addr v1, v0

    const/16 v3, 0x21

    invoke-virtual {v5, v2, v0, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 225
    iget-object v0, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {p0}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v1

    invoke-static {v0, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$200(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;I)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "\u00a0["

    .line 226
    invoke-virtual {v5, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 227
    invoke-virtual {v5}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    const-string v1, ""

    .line 229
    iget-object v2, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->isAdded()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 230
    iget-object v1, v4, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    const v2, 0x7f11086a

    invoke-virtual {v1, v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 232
    :cond_0
    invoke-virtual {v5, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 233
    new-instance v2, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;

    invoke-direct {v2, v4, p0, v6}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey$1;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;Lcom/textuality/keybase/lib/Proof;Ljava/lang/String;)V

    .line 239
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v0

    invoke-virtual {v5, v2, v0, v6, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string v6, "]"

    .line 240
    invoke-virtual {v5, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_1
    return-void

    const-string p1, "M_InsDal"

    const-string p2, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;--->appendProofLinks(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/textuality/keybase/lib/Proof;)V"

    invoke-static/range {p1 .. p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private formatSpannableString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;
    .locals 5

    move-object/16 v2, p0

    move-object/16 v3, p1

    move-object/16 v4, p2

    .line 210
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 211
    invoke-virtual {v0, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v1, "%s"

    .line 212
    invoke-virtual {v4, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "%s"

    .line 213
    invoke-virtual {v4, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v4

    add-int/lit8 v1, v4, 0x2

    .line 214
    invoke-virtual {v0, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 215
    :cond_0
    invoke-virtual {v0, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :goto_0
    return-object v0

    const-string p0, "M_InsDal"

    const-string p1, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;--->formatSpannableString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;"

    invoke-static/range {p0 .. p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 156
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->doInBackground([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;

    move-result-object p1

    return-object p1
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;
    .locals 12

    move-object/16 v9, p0

    move-object/16 v10, p1

    const/4 v0, 0x0

    .line 165
    aget-object v10, v10, v0

    .line 167
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 168
    new-instance v2, Ljava/util/Hashtable;

    invoke-direct {v2}, Ljava/util/Hashtable;-><init>()V

    .line 170
    :try_start_0
    new-instance v3, Lcom/textuality/keybase/lib/KeybaseQuery;

    new-instance v4, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;

    invoke-direct {v4}, Lorg/sufficientlysecure/keychain/network/OkHttpKeybaseClient;-><init>()V

    invoke-direct {v3, v4}, Lcom/textuality/keybase/lib/KeybaseQuery;-><init>(Lcom/textuality/keybase/lib/KeybaseUrlConnectionClient;)V

    .line 171
    iget-object v4, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->mParcelableProxy:Lorg/sufficientlysecure/keychain/util/ParcelableProxy;

    invoke-virtual {v4}, Lorg/sufficientlysecure/keychain/util/ParcelableProxy;->getProxy()Ljava/net/Proxy;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/textuality/keybase/lib/KeybaseQuery;->setProxy(Ljava/net/Proxy;)V

    .line 172
    invoke-static {v3, v10}, Lcom/textuality/keybase/lib/User;->findByFingerprint(Lcom/textuality/keybase/lib/KeybaseQuery;Ljava/lang/String;)Lcom/textuality/keybase/lib/User;

    move-result-object v3

    .line 173
    invoke-virtual {v3}, Lcom/textuality/keybase/lib/User;->getProofs()Ljava/lang/Iterable;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/textuality/keybase/lib/Proof;

    .line 174
    invoke-virtual {v4}, Lcom/textuality/keybase/lib/Proof;->getType()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 175
    iget-object v6, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v6, v2, v5, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$000(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Ljava/util/Hashtable;Ljava/lang/Integer;Lcom/textuality/keybase/lib/Proof;)V

    goto :goto_0

    .line 179
    :cond_0
    invoke-virtual {v2}, Ljava/util/Hashtable;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    .line 180
    new-array v5, v0, [Lcom/textuality/keybase/lib/Proof;

    .line 181
    invoke-virtual {v2, v4}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [Lcom/textuality/keybase/lib/Proof;

    .line 182
    array-length v6, v5

    if-lez v6, :cond_1

    .line 183
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const/4 v7, 0x0

    .line 185
    :goto_2
    array-length v8, v5

    add-int/lit8 v8, v8, -0x1

    if-ge v7, v8, :cond_2

    .line 186
    aget-object v8, v5, v7

    invoke-direct {v9, v6, v10, v8}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->appendProofLinks(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/textuality/keybase/lib/Proof;)V

    const-string v8, ", "

    .line 187
    invoke-virtual {v6, v8}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 190
    :cond_2
    aget-object v5, v5, v7

    invoke-direct {v9, v6, v10, v5}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->appendProofLinks(Landroid/text/SpannableStringBuilder;Ljava/lang/String;Lcom/textuality/keybase/lib/Proof;)V

    .line 191
    iget-object v5, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v5, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$100(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;I)Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v6, v4}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->formatSpannableString(Landroid/text/SpannableStringBuilder;Ljava/lang/String;)Landroid/text/SpannableStringBuilder;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lcom/textuality/keybase/lib/KeybaseException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    :cond_3
    const-string v10, ""

    .line 199
    iget-object v0, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 200
    iget-object v10, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    const v0, 0x7f11083e

    invoke-virtual {v10, v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 203
    :cond_4
    new-instance v0, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;

    iget-object v2, v9, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-direct {v0, v2, v10, v1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;-><init>(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;Ljava/lang/String;Ljava/util/List;)V

    return-object v0

    const-string v11, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;--->doInBackground([Ljava/lang/String;)Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;"

    invoke-static/range {v11 .. v12}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .line 156
    check-cast p1, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;

    invoke-virtual {p0, p1}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->onPostExecute(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;)V

    return-void
.end method

.method protected onPostExecute(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;)V
    .locals 10

    move-object/16 v7, p0

    move-object/16 v8, p1

    .line 246
    invoke-super {v7, v8}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    const-string v9, "M_InsDal"

    const-string p0, "Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;--->onPostExecute(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;)V"

    invoke-static/range {v9 .. v10}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 252
    :cond_0
    iget-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mProofs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 253
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-virtual {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->requireActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f11083d

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mHeader:Ljava/lang/String;

    .line 256
    :cond_1
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/widget/TableLayout;->setVisibility(I)V

    .line 258
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$400(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mHeader:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 261
    iget-object v8, v8, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$ResultPage;->mProofs:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    const/4 v0, 0x1

    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    .line 262
    iget-object v2, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v2}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$600(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v3, 0x7f0c010a

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TableRow;

    const v3, 0x7f090275

    .line 263
    invoke-virtual {v2, v3}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    const v4, 0x7f090276

    .line 264
    invoke-virtual {v2, v4}, Landroid/widget/TableRow;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 265
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v6, v0, 0x1

    invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ". "

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 266
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 267
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 268
    iget-object v0, v7, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment$DescribeKey;->this$0:Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;

    invoke-static {v0}, Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;->access$500(Lorg/sufficientlysecure/keychain/ui/ViewKeyKeybaseFragment;)Landroid/widget/TableLayout;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/widget/TableLayout;->addView(Landroid/view/View;)V

    move v0, v6

    goto :goto_0

    :cond_2
    return-void
.end method
